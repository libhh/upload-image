package image.upload.Service;

import image.upload.DAO.UserRepo;
import image.upload.Entity.User;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Slf4j
@Service
public class ImageServiceImpl implements ImageService {

    @Autowired
    private UserRepo userRepo;

    @Override
    @Transactional
    public void saveImageFile(Integer id, MultipartFile file) {

        try {
            User user = userRepo.findById(id).get();

            byte[] byteObjects = new byte[file.getBytes().length];

            int i = 0;

            for (byte b : file.getBytes()) {
                byteObjects[i++] = b;
            }

            user.setImage(byteObjects);

            userRepo.save(user);

        } catch (IOException e) {
            log.error("Error", e);

            e.printStackTrace();
        }
    }
}
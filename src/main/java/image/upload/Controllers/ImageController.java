package image.upload.Controllers;

import image.upload.DAO.UserRepo;
import image.upload.Entity.User;
import image.upload.Service.ImageService;
import org.apache.tomcat.util.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class ImageController {

    @Autowired
    private ImageService imageService;

    @Autowired
    UserRepo userRepo;

    @PostMapping("/upload-image")
    public String changePhoto(@RequestParam("id") int uid, @RequestParam("image") MultipartFile file) {

        imageService.saveImageFile(uid, file);

        return "redirect:/profile";
    }

    @RequestMapping("/profile")
    public String openPage(Model model) throws Exception {

        User user = userRepo.findByUid(1);

        if (user.getImage() != null) {
            byte[] encodeBase64 = Base64.encodeBase64(user.getImage());
            String base64Encoded = new String(encodeBase64, "UTF-8");
            model.addAttribute("userImage", base64Encoded);
        }
        return "view/show-image.jsp";
    }

    @GetMapping("/uploadPhoto")
    public String openPhotoPage(@RequestParam("id") int uid) {

        return "view/image-upload.jsp";
    }
}
package image.upload.Service;

import org.springframework.web.multipart.MultipartFile;

public interface ImageService {

    void saveImageFile(Integer recipeId, MultipartFile file);
}
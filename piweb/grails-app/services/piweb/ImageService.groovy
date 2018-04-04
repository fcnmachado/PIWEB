package piweb

import grails.gorm.transactions.Transactional
import org.springframework.web.multipart.MultipartFile

@Transactional
class ImageService {


    def amazonS3Service

    Image save(MultipartFile imageFile, def id) {

        Image newImage = new Image()

        boolean isImage = ['jpeg', 'jpg', 'png'].any { extension ->
            imageFile.originalFilename?.toLowerCase()?.endsWith(extension)
        }

        if (isImage) {
            def path = "image/${id}/" + imageFile.originalFilename
            String s3FileUrl = amazonS3Service.storeMultipartFile(path, imageFile)

            newImage.url = s3FileUrl
            newImage.main = true
            newImage.save()

            if (!newImage || newImage.hasErrors()) {
                amazonS3Service.deleteFile(path)
            }
        }

        newImage
    }

}

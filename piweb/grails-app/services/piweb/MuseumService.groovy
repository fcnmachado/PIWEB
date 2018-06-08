package piweb

import grails.gorm.transactions.Transactional

@Transactional
class MuseumService {

    def save(Map params, User user, Image image) {
        Museum newMuseum = new Museum(params + [user: user, image: image])
        newMuseum.save()
        if(!newMuseum.hasErrors()){
            user.addToMuseums(newMuseum)
            user.save()
        }
        return newMuseum
    }

    def update(Museum museum) {
        museum.save()
        return museum
    }

    def findByName(String name){
        Museum.findAllByNameLike("%${name}%")
    }

    def list(Map pageMap){
        Museum.list(pageMap)
    }
}

package piweb

import grails.gorm.transactions.Transactional

@Transactional
class MuseumService {

    def createMuseum(Map params, User user) {
        Museum newMuseum = new Museum(params + [user: user])
        newMuseum.save()
        if(!newMuseum.hasErrors()){
            user.addToMuseums(newMuseum)
            user.save()
        }
        return newMuseum
    }
}

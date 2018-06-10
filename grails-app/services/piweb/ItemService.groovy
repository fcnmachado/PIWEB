package piweb

import grails.gorm.transactions.Transactional

@Transactional
class ItemService {

    def saveItem(Map params, Museum museum, Image image) {
        Item newItem = new Item(params + [museum: museum])
        newItem.addToImages(image)
        newItem.save()
        if(!newItem.hasErrors()){
            museum.addToItens(newItem)
            museum.save()
        }
        return newItem
    }
}

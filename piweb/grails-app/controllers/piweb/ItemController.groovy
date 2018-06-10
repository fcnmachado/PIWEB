package piweb

class ItemController {

    def imageService
    def itemService

    def form(){
        Museum museum = Museum.get(params.museumId)
        render view: "create", model: [item: new Item(), museum: museum]
    }

    def save(){
        Museum museum = Museum.get(params.museumId)
        Image image = imageService.save(params.imageFile, params.name)
        Item item = itemService.saveItem(params, museum, image)
        if(item.hasErrors()) {
            render view: "create", model: [item: new Item()]
        }else {
            redirect controller: "museum", action: "edit", id: museum.id
        }
    }

    def delete(Long id) {
        def item = Item.get(id)
        def idMuseum = item.museum.id
        item.delete(flush:true)
        redirect controller: "museum", action: "edit", id: idMuseum
    }
}

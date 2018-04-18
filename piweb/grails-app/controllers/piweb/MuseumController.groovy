package piweb

class MuseumController {

    MuseumService museumService
    ImageService imageService
    ItemService itemService

    def list() {
        def museums
        if(params.museumName){
            museums = Museum.findAllByNameLike("%${params.museumName}%")
        }else {
            museums = Museum.list()
        }
        render(view: "../index", model: [museums: museums, user: getAuthenticatedUser()])
    }

    def create() {
        render view:'create', model: [user: getAuthenticatedUser(), museum: new Museum()]
    }

    def save() {
        User user = getAuthenticatedUser()
        Image image = imageService.save(params.imageFile, params.name)
        Museum newMuseum = museumService.createMuseum(params, user, image)
        if (newMuseum.hasErrors()) {
            render(view: 'create', model: [user: user])
        } else {
            render(view: "../user/show", model: [user: user])
        }
    }

    def show(Long id) {
        render view: "show", model: [museum: Museum.get(id)]
    }

    def edit(Long id) {
        render view: "edit", model: [museum: Museum.get(id)]
    }

    def delete(Long id) {
        def museum = Museum.get(id)
        museum.delete(flush:true)
        redirect (controller:'user', action: 'show')
    }

    def createItem(){
        Museum museum = Museum.get(params.museumId)
        render view: "../item/create", model: [item: new Item(), museum: museum]
    }

    def saveItem(){
        Museum museum = Museum.get(params.museumId)
        Image image = imageService.save(params.imageFile, params.name)
        Item item = itemService.saveItem(params, museum, image)
        if(item.hasErrors()) {
            render view: "../item/create", model: [item: new Item()]
        }else {
            redirect action: "show", id: museum.id
        }
    }

}

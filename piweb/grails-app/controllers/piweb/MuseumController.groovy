package piweb

class MuseumController {

    MuseumService museumService
    ImageService imageService
    ItemService itemService

    def list(){
        if(!getAuthenticatedUser()){
            redirect controller: "login", action: "auth"
        }
        else {
            render(view: 'list', model: [user: getAuthenticatedUser()])
        }
    }

    def create() {
        render view:'create', model: [user: getAuthenticatedUser(), museum: new Museum()]
    }

    def save() {
        User user = getAuthenticatedUser()
        Image image = imageService.save(params.imageFile, params.name)
        Museum newMuseum = museumService.save(params, user, image)
        if (newMuseum.hasErrors()) {
            render(view: 'create', model: [user: user])
        } else {
            render(view: "list", model: [user: user])
        }
    }

    def update(Museum museum) {
        User user = getAuthenticatedUser()
        Image image
        if(params.imageFile?.filename != ""){
            museum.image = imageService.save(params.imageFile, museum.name)
        }
        museumService.update(museum)
        if (museum.hasErrors()) {
            render(view: 'edit', model: [museum: museum])
        } else {
            render(view: "list", model: [user: user])
        }
    }

    def edit(Long id) {
        render view: "edit", model: [museum: Museum.get(id)]
    }

    def delete(Long id) {
        def museum = Museum.get(id)
        museum.delete(flush:true)
        redirect (controller:'museum', action: 'list')
    }
}

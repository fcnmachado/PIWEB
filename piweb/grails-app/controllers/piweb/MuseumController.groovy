package piweb

class MuseumController {

    MuseumService museumService
    ImageService imageService

    def index() {
        def museums = Museum.list()
        render(view: "../index", model: [museums: museums, user: getAuthenticatedUser()])
    }

    def create() {
        respond new Museum()
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

    def show() {

    }

}

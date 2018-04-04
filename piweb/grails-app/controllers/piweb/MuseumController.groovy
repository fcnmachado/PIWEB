package piweb

class MuseumController {

    MuseumService museumService

    def index() {
        def museums = Museum.list()
        render(view: "../index", model: [museums: museums, user: getAuthenticatedUser()])
    }

    def create() {
        respond new Museum()
    }

    def save() {
        User user = User.findByUsername(getAuthenticatedUser().username)
        Museum newMuseum = museumService.createMuseum(params, user)
        if (newMuseum.hasErrors()) {
            render(view: 'create', model: [user: user])
        } else {
            render(view: "../user/show", model: [user: user])
        }
    }

    def show() {

    }

}

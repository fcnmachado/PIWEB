package piweb

class MuseumController {

    def index() {
        def museums = Museum.list()
        render(view: "../index", model: [museums: museums])
    }

    def create() {

    }

    def show() {

    }

}

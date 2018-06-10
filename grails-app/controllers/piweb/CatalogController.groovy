package piweb

class CatalogController {

    def museumService

    def home() {
        def museums
        if(params.q){
            museums = museumService.findByName(params.q)
        }else {
            museums = museumService.list()
        }

        render(view: "home", model: [museums: museums, user: getAuthenticatedUser()])
    }

    def museum(Long id) {
        render view: "museum", model: [museum: Museum.get(id)]
    }

}

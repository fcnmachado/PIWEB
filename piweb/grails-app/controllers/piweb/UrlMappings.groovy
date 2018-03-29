package piweb

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: 'museum', action: 'index')
        "/cadastro"(view: "/user/create")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}

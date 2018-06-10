package piweb

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/admin"(controller: "museum", action: "list")
        "/admin/museun/$id"(controller: "museum", action: "edit")
        "/admin/museum/form"(controller: "museum", action: "create")

        "/museum/$id"(controller: "catalog", action: "museum")
        "/"(controller: 'catalog', action: 'home')
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}

/*name customerTag: "/api/customerTag"(controller: "customerTagResource") {action = [GET:'list']}
"/api/customerTag/$name"(controller:"customerTagResource"){ action = [GET:"show", DELETE: "delete"] }
"/api/customerTag/$name/customer"(controller:"customerTagResource"){ action = [GET:"showWithCustomers", POST: "addOrRemoveCustomersFromTag", DELETE:"addOrRemoveCustomersFromTag"] }*/

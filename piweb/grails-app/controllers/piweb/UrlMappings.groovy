package piweb

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: 'museum', action: 'list')
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}

/*name customerTag: "/api/customerTag"(controller: "customerTagResource") {action = [GET:'list']}
"/api/customerTag/$name"(controller:"customerTagResource"){ action = [GET:"show", DELETE: "delete"] }
"/api/customerTag/$name/customer"(controller:"customerTagResource"){ action = [GET:"showWithCustomers", POST: "addOrRemoveCustomersFromTag", DELETE:"addOrRemoveCustomersFromTag"] }*/

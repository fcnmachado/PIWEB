package piweb

import grails.plugin.springsecurity.SpringSecurityService

class UserController {

    UserService userService

    SpringSecurityService springSecurityService

    def create(){
        respond new User()
    }

    def save() {
        User newUser = userService.createUser(params)
        if (newUser.hasErrors()) {
            render(view: 'create', model: [user: newUser])
        } else {
            springSecurityService.reauthenticate newUser.username
            redirect controller: "museum", action: "list"
        }
    }

}

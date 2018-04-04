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
            render(view: "../user/show", model: [user: newUser])
        }
    }

    def show(){
        render(view: 'show', model: [user: getAuthenticatedUser()])
    }

}

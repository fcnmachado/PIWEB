package piweb

class UserController {

    UserService userService

    def create() {
        User newUser = userService.createUser(params)
        if (newUser.hasErrors()) {
            render(view: 'create', model: [user: newUser])
        } else {
            render(view: "../admin/index", model: [user: newUser])
        }
    }
}

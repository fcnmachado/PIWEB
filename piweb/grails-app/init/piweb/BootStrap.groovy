package piweb

class BootStrap {

    def init = { servletContext ->

        User user = new User(username: 'admin', password: 'admin')
        user.save(flush:true)
        Role role = new Role(authority: 'ROLE_ADMIN')
        role.save(flush:true)
        UserRole userRole = new UserRole(user: user, role: role)
        userRole.save(flush:true)

    }
    def destroy = {
    }
}

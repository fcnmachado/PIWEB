package piweb

import grails.gorm.transactions.Transactional

@Transactional
class UserService {

    def createUser(Map params) {
        User newUser = new User(params)
        newUser.save()
        if(!newUser.hasErrors()) {
            UserRole newUserRole = new UserRole(user: newUser, role: Role.findByAuthority('ROLE_USER'))
            newUserRole.save()
        }
        return newUser
    }
}

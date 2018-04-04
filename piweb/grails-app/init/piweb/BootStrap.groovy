package piweb

class BootStrap {

    def init = { servletContext ->



        User user = new User(username: 'admin@123', password: 'admin', name: "Felipe", lastName: "Machado")
        Image image = new Image(url: "https://media-cdn.tripadvisor.com/media/photo-s/0f/20/b8/5f/mac-visto-da-ponte-da.jpg")
        image.save()
        Museum museum = new Museum(name: "Museu do Inga", user: user, image: image, description: "O MAC Niterói completou em 2016 seus 20 anos de vida pública. Desde a sua inauguração foi imediatamente adotado como símbolo da cidade e, rapidamente, considerado uma das maravilhas arquitetônicas do mundo.")
        user.addToMuseums(museum)
        user.save()
        Role role = new Role(authority: 'ROLE_USER')
        role.save()
        UserRole userRole = new UserRole(user: user, role: role)
        userRole.save()


        User user2 = new User(username: 'admin2', password: 'admin2')
        Image image2 = new Image(url: "http://media.viajenaviagem.com.s3-website-us-east-1.amazonaws.com/wp-content/uploads/2016/01/museu-do-amanha-38.jpg")
        Museum museum2 = new Museum(name: "Museu do Amanha", user: user2, image: image2, description: "Se voce gosta de futebol e não visitou o Museu do Futebol no Rio de Janeiro, precisa visitar.Nesta página, o relato sobre a visita à um museu moderno, pequeno mas interessante, museu este que possui fotos")
        user2.addToMuseums(museum2)
        user2.save()
        UserRole userRole2 = new UserRole(user: user2, role: role)
        userRole2.save()



    }
    def destroy = {
    }
}

package piweb

import grails.util.Environment

class BootStrap {

    def init = { servletContext ->

        println ("Environment =================> "+Environment.current)

        if (Environment.current == Environment.DEVELOPMENT) {
            this.inputData()
        }

    }

    def destroy = {
    }

    def inputData(){
        createUsers()
        createMuseums()
    }

    def createUsers(){
        User user = new User(username: 'admin@123', password: 'admin', name: "Felipe", lastName: "Machado")
        User user2 = new User(username: 'admin', password: 'admin', name:'Admin')        
        user.save()
        user2.save()

        setAuthorities(user, user2)
    }

    def setAuthorities(user, user2){
        Role role = new Role(authority: 'ROLE_USER')
        role.save()
        
        UserRole userRole = new UserRole(user: user, role: role)
        userRole.save()
        UserRole userRole2 = new UserRole(user: user2, role: role)
        userRole2.save()
    }

    def createMuseums(){
        User user = User.get(1)
        User user2 = User.get(2)

        Image image = new Image(url: "https://media-cdn.tripadvisor.com/media/photo-s/0f/20/b8/5f/mac-visto-da-ponte-da.jpg")
        Image image2 = new Image(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4etaSZiQPqHqIksamv_zNGE29svJ-oipuCWwqtc6mzfdbnCnNkg")
        Image image3 = new Image(url: "http://media.viajenaviagem.com.s3-website-us-east-1.amazonaws.com/wp-content/uploads/2016/01/museu-do-amanha-38.jpg")
        Image image4 = new Image(url: "http://www.rastrearobjetos.com.br/blog/wp-content/uploads/2017/09/para-que-serve-os-selos.jpg")
        Image image5 = new Image(url: "https://cdn.getyourguide.com/img/tour_img-659439-148.jpg")

        Museum museum = new Museum(name: "Museu do Inga", user: user, image: image, description: "O MAC Niterói completou em 2016 seus 20 anos de vida pública. Desde a sua inauguração foi imediatamente adotado como símbolo da cidade e, rapidamente, considerado uma das maravilhas arquitetônicas do mundo.")
        Museum museum2 = new Museum(name: "Exposiçao da Maria", user: user, image: image2, description: "Descriçao da exposiçao da Maria , aqui vc econtra td quanto 'e tipo de artesanato feitos com madeira.")
        Museum museum3 = new Museum(name: "Museu do Amanha", user: user2, image: image3, description: "Se voce gosta de futebol e não visitou o Museu do Futebol no Rio de Janeiro, precisa visitar.Nesta página, o relato sobre a visita à um museu moderno, pequeno mas interessante, museu este que possui fotos")
        Museum museum4 = new Museum(name: "Coleçoes do Selos", user: user, image: image4, description: "Se voce gosta de futebol e não visitou o Museu do Futebol no Rio de Janeiro, precisa visitar.Nesta página, o relato sobre a visita à um museu moderno, pequeno mas interessante, museu este que possui fotos")
        Museum museum5 = new Museum(name: "Visita Ao Louvre", user: user, image: image5, description: "Se voce gosta de futebol e não visitou o Museu do Futebol no Rio de Janeiro, precisa visitar.Nesta página, o relato sobre a visita à um museu moderno, pequeno mas interessante, museu este que possui fotos")

        createItems(museum5)

        user.addToMuseums(museum)
        user.addToMuseums(museum2)
        user2.addToMuseums(museum3)
        user2.addToMuseums(museum4)
        user2.addToMuseums(museum5)

        user.save()
        user2.save()
    }

    def createItems(museum){

        Item item = new Item(name:'Mona Lisa', author:'Leonardo da Vinci', description:'The Mona Lisa is a half-length portrait painting by the Italian Renaissance', museum: museum)

        Item item2 = new Item(name:'Venus de Milo', author:'Alexandros of Antioch', description:'Aphrodite of Milos, better known as the Venus de Milo, is an ancient Greek statue and one of the most famous', museum: museum)

        Image image = new Image(url:"https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/Crowd_looking_at_the_Mona_Lisa_at_the_Louvre.jpg/300px-Crowd_looking_at_the_Mona_Lisa_at_the_Louvre.jpg")
        Image image2 = new Image(url:"https://i.guim.co.uk/img/static/sys-images/Guardian/Pix/pictures/2015/5/11/1431353466510/21c84073-e2a5-454c-9f41-2f67fa3b89da-660x1020.jpeg?w=700&q=55&auto=format&usm=12&fit=max&s=ed6c01706511da77e2cf0785173a94a1")

        item.addToImages(image)
        item2.addToImages(image2)

        museum.addToItens(item)
        museum.addToItens(item2)

        museum.save()

    }

}

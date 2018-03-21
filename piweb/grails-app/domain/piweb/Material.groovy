package piweb

class Material {

    String name

    static constraints = {
        name nullable: false, unique: true
    }
}

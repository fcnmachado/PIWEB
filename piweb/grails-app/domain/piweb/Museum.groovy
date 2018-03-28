package piweb

class Museum implements Serializable{

    String name
    String description
    Image image
    User user

    static hasMany = [itens: Item]

    static constraints = {
        name nullable: false, unique: true
        description nullable: false
        image nullable: true
        user nullable: false, unique: true
    }
}

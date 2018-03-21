package piweb

class Museum implements Serializable{

    String name
    String description
    Image image

    static hasMany = [itens: Item]

    static constraints = {
        name nullable: false, unique: true
        description nullable: false
        image nullable: true

    }
}

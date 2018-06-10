package piweb

class Museum implements Serializable{

    String name
    String description
    Image image

    static belongsTo = [user: User]

    static hasMany = [itens: Item]

    static constraints = {
        name nullable: false, unique: true
        description nullable: false
        image nullable: true
        user nullable: false
    }
}

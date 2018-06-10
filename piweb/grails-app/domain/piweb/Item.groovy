package piweb

class Item implements Serializable{

    String name
    String author
    String description
    Museum museum

    static hasMany = [images : Image, materials: Material]

    static belongsTo = [Museum]

    static constraints = {
        name nullable: false
        author nullable: true
        description nullable: true, type: "text"
    }
}

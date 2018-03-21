package piweb

class Item {

    String name
    String author
    String description

    static hasMany = [images : Image, materials: Material]

    static belongsTo = [Museum]

    static constraints = {
    }
}

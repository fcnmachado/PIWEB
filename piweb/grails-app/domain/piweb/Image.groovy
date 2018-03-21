package piweb

class Image implements Serializable{

    String url

    static constraints = {
        url nullable: false, unique: true
    }
}

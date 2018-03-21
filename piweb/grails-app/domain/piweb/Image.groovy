package piweb

class Image {

    String url

    static constraints = {
        url nullable: false, unique: true
    }
}

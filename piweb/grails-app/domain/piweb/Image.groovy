package piweb

class Image implements Serializable{

    String url
    boolean main

    static constraints = {
        url nullable: false, unique: true
        main nullable: true
    }
}

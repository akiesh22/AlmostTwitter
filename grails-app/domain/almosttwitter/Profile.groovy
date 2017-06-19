package almosttwitter

class Profile {
    int id
    static belongsTo = [user:User]
    String fullName
    String address
    String dob
    String sex
    byte [] picture
    String pictureType
    static constraints = {
        fullName(blank: false, size: 9..160)
        address(nullable: true)
        dob(nullable: true)
        sex(nullable: true)
        pictureType(nullable: true)
        picture(nullable: true)
    }
}

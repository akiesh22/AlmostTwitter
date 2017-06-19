package almosttwitter

class User {
    int id
    String email
    String password
    Profile profile
    static hasMany = [status:Status,followers:User,following:User]
    static constraints = {
        email(blank: false, unique: true)
        password(blank: false, password:true, minSize: 4, maxSize: 32 )
        email(blank: false, email: true)
        profile(nullable: true)
        followers(nullable: true)
        following(nullable: true)
        status(nullable: true)
    }
}

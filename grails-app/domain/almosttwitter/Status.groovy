package almosttwitter

class Status {
    int id
    String tweets
    Date dateCreated
    static  belongsTo = [user:User]
    static constraints = {
        tweets (blank: false, maxSize: 120, nullable: true )
    }
}

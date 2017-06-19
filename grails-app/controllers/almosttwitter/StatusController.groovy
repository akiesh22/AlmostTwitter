package almosttwitter

class StatusController {

    def index() {}

    def retrieve() {
        render "test succesful"
    }

    def newStatus() {
        User u = User.get(session.userId)
        if (!params.equals(null)) {
            Status status = new Status(params)
            u.addToStatus(status)
            u.save(flush: true)
            def statusList = Status.list()
            render(template: "/timeline/newsFeed", collection: statusList, var: "tweets", model: [i: u])
            //render "hello ajax"
        }
    }

    def deleteStatus() {
        User u = User.get(session.userId)
        if (params.id != null) {
            def status = Status.get(params.id)
            status.delete(flush: true)
        }
        def userList = User.list();
        def statusList = Status.list()
        def followedUser = u.following
        //Users that you are following
        int i = 0
//      List of all users except you
        for (def user : userList) {
            if (user.id == u.id && user.id == userList[i].id) {
                userList.remove(i)
                break
            }
            i++;
        }
        render(view: "/home", model: [i: u, user: u, userList: userList, tweets: statusList, followedUsers: followedUser])
    }
}

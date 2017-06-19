package almosttwitter

class ProfileController {
    def index() {
        render view: "/profile/profile"
    }

    def goHome(){
        User u = User.get(session.userId)
        def statusList = Status.list()
        def userList = User.list();
        def followedUser = u.following
        int i=0;
        for (def user :userList){
            if (user.id==u.id){
                userList.remove(i)
                break
            }
            i++;
        }
        render(view: "/home", model: [i:u, user:u, userList:userList, tweets:statusList, followedUsers:followedUser])

    }
    def display_picture() {

        def user = User.get(params.id)
        if (!user || !user?.profile?.picture || !user?.profile.pictureType) {
            response.sendError(404)
            return
        }
        response.contentType = user.profile.pictureType
        response.contentLength = user.profile.picture.size()
        OutputStream out = response.outputStream
        out.write(user.profile.picture)
        out.close()
    }

    def update() {

        def user = User.get(session.userId)
        def photo = request.getFile('picture')
        if (!user.profile) {
            def profile = new Profile()
            user.profile = profile
        }
        if (params.fullName) {
            user.profile.properties['fullName'] = params
        }
        if (params.address) {
            user.profile.properties['address'] = params
        }
        if (params.dob) {
            user.profile.properties['dob'] = params
        }
        if (params.sex) {
            user.profile.properties['sex'] = params
        }
        if (photo.bytes) {
            user.profile.picture = photo.bytes
            user.profile.pictureType = photo.contentType
        }

        def userList = User.list();
        def statusList = Status.list()

        def followedUser = user.following //Users that you are following
        int i = 0
//      List of all users except you
        for (def u : userList) {
            if (u.id == user.id && u.id == userList[i].id) {
                userList.remove(i)
                break
            }
            i++;

//
//
//        def user = User.get(session.userId)
//        def f = request.getFile('picture')
//
//        def profile = new Profile()
//
//        user.profile = profile
//        user.profile.properties['fullName','address','dob','sex'] = params
//
//        user.profile.picture = f.bytes
//        user.profile.pictureType = f.contentType

            if (user.save(flush: true, failOnError: true)) {
                render(view: "/home", model: [i: user, user: user, userList: userList, tweets: statusList, followedUsers: followedUser])

            } else {
                render user.errors
            }
        }
    }

    def findProfile(){
        def userId = params.id
        def user = User.findById(userId)

        def userList = User.list();
        int i=0;
        for (def u :userList){
            if (u.id==user.id){
                userList.remove(i)
                break
            }
            i++;
        }

        render(view: "/profile/VisitProfile", model: [user:user, userList:userList])

    }

}



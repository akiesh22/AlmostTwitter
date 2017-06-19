package almosttwitter

class UserController {
    def loginService

    def index() {}

    def login() {
        String userEmail = params.email
        String password = params.password
        User userGet = loginService.login(userEmail, password)

        if (userGet != null) {
            session.userId = userGet.id;
            def userList = User.list();
            def statusList = Status.list()

            def followedUser = userGet.following //Users that you are following
            int i = 0
//       List of all users except you
            for (def user : userList) {
                if (user.id == userGet.id && user.id == userList[i].id) {
                    userList.remove(i)
                    break
                }
                i++;
            }

            render(view: "/home", model: [i: userGet, user: userGet, userList: userList, tweets: statusList, followedUsers: followedUser])
        } else {
            render(view: "/index", model: [errorMessage: "Wrong Email or Password"])

        }
    }

    def logout() {
        session.invalidate()
        render(view: "/index", model: [message: "Logged out !"])
    }

    def register() {
        String userEmail = params.email
        String password = params.password
        def user = new User(email: params.email, password: params.password)
        if (!user.save(flush: true)) {
            render(view: "/index.gsp", model: [errorMessage: "Cannot create an account !"])
        } else {
            User userGet = loginService.login(userEmail, password)
            if (userGet != null) {
                session.userId = userGet.id;
                render(view: "/profile/profile.gsp", model: [messageRegisterSuccess: "Account created successfully!"])
            }
        }

    }

    def follow() {
        User user = User.get(session.userId)
        def u = User.findById(params.id)
        user.addToFollowing(u)
        u.addToFollowers(user)
        u.save(flush: true)
        def userList = User.list();
        def statusList = Status.list()
        def followedUser = user.following
        int i = 0
//      List of all users except you
        if (userList.contains(user)) {
            userList.remove(user)
        }

        render(view: "/home", model: [i: user, user: user, userList: userList, tweets: statusList, followedUsers: followedUser])
    }

    def unfollow() {
        User user = User.get(session.userId)
        def u = User.findById(params.id)
        user.removeFromFollowing(u)
        u.removeFromFollowers(user)
        u.save(flush: true)
        def userList = User.list();
        def statusList = Status.list()
        def followedUser = user.following
        if (userList.contains(user)) {
            userList.remove(user)
        }
        render(view: "/home", model: [i: user, user: user, userList: userList, tweets: statusList, followedUsers: followedUser])
    }
}

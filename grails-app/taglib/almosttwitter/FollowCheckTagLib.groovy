package almosttwitter

class FollowCheckTagLib {
    def followUnfollow = {
        attrs ->
            def followedUser = attrs.user
            User user = User.get(session.userId)
            if (user.following.size()==0) {
                out << render(template: "/templates/follow", model: [flounfloMsg: "follow", newUser:followedUser.id])
    }
            else {
                println user.following.size()
                for (def following : user.following) {
                    if (followedUser.id == following.id) {
                        out << render(template: "/templates/follow", model: [flounfloMsg: "unfollow", newUser:followedUser.id])
                    } else {
                        out << render(template: "/templates/follow", model: [flounfloMsg: "follow", newUser:followedUser.id])
                    }
                }

            }

    }

}




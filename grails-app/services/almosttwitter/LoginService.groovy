package almosttwitter

class LoginService {

    def serviceMethod() {

    }

    def User login(String userEmail, String password) {
        User userGet = User.findByEmailLikeAndPasswordLike(userEmail, password)
        return userGet
    }
}

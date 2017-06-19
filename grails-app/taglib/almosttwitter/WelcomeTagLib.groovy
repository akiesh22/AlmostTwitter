package almosttwitter

class WelcomeTagLib {
    def  welcome = { attrs, body ->
        def text =attrs.text
        if (text){
            out<<body()
        }

    }
    }

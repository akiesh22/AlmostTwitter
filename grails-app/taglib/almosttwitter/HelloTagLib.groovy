package almosttwitter

class HelloTagLib {
    def hello = { attrs->
        def fullName = attrs.fullName
        if (fullName){
            out<<"hello "+fullName

        }
        else{
            out<<"Hello Anonymous"
        }

    }

}

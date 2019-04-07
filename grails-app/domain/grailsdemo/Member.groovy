package grailsdemo

class Member {
    Integer id
    String firstName
    String lastName
    String email
    String password

    static constraints = {
    }
    static mapping = {
        version(false)
    }
}

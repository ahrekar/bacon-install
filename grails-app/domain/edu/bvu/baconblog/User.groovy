package edu.bvu.baconblog

class User {
    String userId
    String password

    Profile profile     // User has-a Profile; in Profile, Profile belongsTo User

    static constraints = {
        userId(blank: false)
        password(size: 6..12, blank: false,
                validator: { passwd, user ->
                    return passwd != user.userId
                })
        profile(nullable: true)
    }

    static mapping = {
        profile lazy: false     // Always load Profile with User if there is one
    }

    static hasMany = [ posts : Post, tags : Tag, following : User ]

    String toString() {
        return userId
    }
}


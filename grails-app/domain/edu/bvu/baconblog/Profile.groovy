package edu.bvu.baconblog

class Profile {
    static belongsTo = User

    String fullname
    String webaddress
    String email
    String bio
    String country

    static constraints = {
        fullname(blank: false)
        email(blank: false, email: true)
        webaddress(nullable: true, url: true)
        country(nullable: true)
        bio(maxSize: 4096)
    }

    // This makes Profile objects show up in scaffolding as "Profile for fullname"
    // rather than "edu.bvu.baconblog.User id#" 
    String toString() {
        return "Profile for ${fullname} : ${id}"
    }
}


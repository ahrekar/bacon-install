package edu.bvu.baconblog

class Post {
    String title
    String content
    Date dateCreated

    static constraints = {
        title(blank: false)
        content(blank: false, maxSize: 4096)
    }

    static belongsTo = [ user : User ]     // User-to-Posts
	static hasMany = [ tags : Tag ]

    static mapping = {
        sort dateCreated: "desc"
    }

    String toString() {
        return title
        //return content
    }
}

package edu.bvu.baconblog

class Tag {
    String name

    static constraints = {
        name(blank: false)
    }

    static hasMany = [ posts : Post ]

    static belongsTo = [ User, Post ]

    String toString() {
        return name
        //return content
    }

	static mapping = {
		sort "name"
	}
}


package edu.bvu.baconblog

class HomeController {
    def index() {
        def posts = [] as Set

        if (params.searchQuery) {

            User user = User.findByUserId(params.searchQuery)
			Tag tag = Tag.findByName(params.searchQuery)
			Post postTitle = Post.findByTitle(params.searchQuery)
			Post postContent = Post.findByContent(params.searchQuery)
            posts = Post.findAllByUser(user)
			// If ther are tags the match the search query,
			// add any posts that have that tag
			if (tag)
				posts += tag.posts

        } else {
            posts = Post.findAll()
        }
        [ posts : posts ]
    }
}

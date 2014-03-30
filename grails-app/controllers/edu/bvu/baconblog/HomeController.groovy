package edu.bvu.baconblog

class HomeController {
    def index() {
        def postList = [] 
		def posts = []

        if (params.searchQuery) {

            User user = User.findByUserId(params.searchQuery)
			Tag tag = Tag.findByName(params.searchQuery)
			Post postTitle = Post.findByTitle(params.searchQuery)
			Post postContent = Post.findByContent(params.searchQuery)
            postList = Post.findAllByUser(user)
			// If ther are tags the match the search query,
			// add any posts that have that tag
			if (tag)
				postList.addAll(tag.posts)

			// Remove any duplicates from the list
			posts = postList as Set

        } else {
            posts = Post.findAll()
        }
        [ posts : posts ]
    }
}

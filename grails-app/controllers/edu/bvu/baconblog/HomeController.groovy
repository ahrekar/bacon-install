package edu.bvu.baconblog

class HomeController {

    def index() {
        def postList = [] 
		def posts = []

        if (params.tag){
			Tag tag = Tag.findByName(params.tag)
			posts.addAll(tag.posts)
		} else if (params.searchQuery) {

            User user = User.findByUserIdIlike(params.searchQuery)
			Tag tag = Tag.findByNameIlike(params.searchQuery)

			// Gather all of the posts.
			def somePosts = []
			somePosts = Post.findAll()

			// Search through the content of each post for the search
			// query.
			for(Post post : somePosts){
				if(post.getContent().contains(params.searchQuery)){
					postList.add(post)
				}
				else if(post.getTitle().contains(params.searchQuery)){
					postList.add(post)
				}
			}

			// Add the posts that have user names that match the query.
            postList += Post.findAllByUser(user)

			// If there are tags that match the search query,
			// add any posts that have that tag.
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

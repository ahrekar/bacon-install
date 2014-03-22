package edu.bvu.baconblog

class HomeController {
    def index() {
        def posts
        if (params.author) {
            User user = User.findByUserId(params.author)
            posts = Post.findAllByUser(user)
        } else {
            posts = Post.findAll()
        }
        [ posts : posts ]
    }
}

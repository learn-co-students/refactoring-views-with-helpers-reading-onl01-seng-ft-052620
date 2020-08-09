module PostsHelper
    def last_updated(post)
        post.updated_at.strftime("last updated %A, %b, %e, at %1:%M %p")
    end 
end

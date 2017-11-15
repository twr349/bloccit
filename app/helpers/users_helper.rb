module UsersHelper
    def user_has_no_posts_or_comments?(post, comment)
        @user.posts.count == 0 && @user.comments.count == 0
    end
   
    
end

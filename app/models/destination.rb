class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts

    def recent_five_posts
      self.posts.sort_by {|post| post.created_at}.last(5)
    end

    def most_liked_post
        #Here, Khanittha writes an amazing method that returns the "most-liked" post
        self.posts.sort_by {|post| post.likes}.last
    end

    def avg_age_of_bloggers
        bloggers = self.bloggers.pluck(:age)
        bloggers.sum / bloggers.count
    end
end

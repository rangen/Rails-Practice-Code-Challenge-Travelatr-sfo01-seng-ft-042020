class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts

    validates :name, uniqueness: true
    validates :age, numericality: {greater_than: 0}
    validates :bio, length: {minimum: 30}

    def total_likes
        self.posts.pluck(:likes).sum
    end

    def featured_post
        self.posts.sort_by {|post| post.likes}.last
    end

    def top_five
        #returning 5 destination objects that correspond to the blogger's most posted-about destinations
        self.destinations.sort_by {|dest| dest.posts.where(blogger_id: self.id).count}.last(5)


    end
end

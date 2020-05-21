class Post < ApplicationRecord
    belongs_to :blogger
    belongs_to :destination

    validates :content, length: {minimum: 100}

    def increment_like
        self.likes += 1
        self.save
    end
    
end

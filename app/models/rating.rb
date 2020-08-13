class Rating < ApplicationRecord
    belongs_to :news_item


    def self.find_for(rating)
        NewsItem.find_by(
            rating: rating
        )
    end
end

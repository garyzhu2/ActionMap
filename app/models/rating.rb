class Rating < ApplicationRecord
    belongs_to :news_item
    attr_accessor :rating, :ratings, :all_ratings
    
    def set_rating(rating)  
        @rating = rating  
    end  
    def set_news_item(news_item)  
        @news_item = news_item  
    end  
   
    def getRating()
        @rating
    end

end

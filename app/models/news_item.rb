# frozen_string_literal: true

class NewsItem < ApplicationRecord
    belongs_to :representative
    has_many :ratings, dependent: :delete_all
    has_many :users #added this association 

    def self.find_for(representative_id)
        NewsItem.find_by(
            representative_id: representative_id
        )
    end
end

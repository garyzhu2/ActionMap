# frozen_string_literal: true

class AddRatingsToNewsItem < ActiveRecord::Migration[5.2]
    def change
        add_column :news_items, :ratings, :integer
    end
end

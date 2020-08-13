class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      #t.belongs_to :users, index: true, null: false, references: :users
      t.belongs_to :news_item, null: false, index: true
      t.integer :rating
    end
  end
end

class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
    t.string :customer_lastname
    t.integer :star_rating
    t.integer :restaurant_id
  end
end
end
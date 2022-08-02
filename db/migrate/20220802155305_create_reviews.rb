class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.text :title
      t.text :description
      t.integer :upvotes
      t.integer :downvotes
      t.integer :rating
      t.timestamps
      t.belongs_to :game 
      t.belongs_to :user
    end
  end
end

class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :thoughts
      t.integer :rating
      t.belongs_to :restaurant, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

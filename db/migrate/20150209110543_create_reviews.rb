class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :product, index: true
      t.string :user
      t.integer :rating
      t.text :body

      t.timestamps null: false
    end
    add_foreign_key :reviews, :products
  end
end

class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.integer :price
      t.text :description
      t.integer :quantity
      t.references :seller, index: true, foreign_key: true
      t.string :category

      t.timestamps null: false
    end
  end
end

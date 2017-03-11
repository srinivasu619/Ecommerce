class CreateConsumers < ActiveRecord::Migration
  def change
    create_table :consumers do |t|
      t.string :email
      t.string :password
      t.string :name
      t.text :localaddress
      t.string :phoneno
      t.string :city
      t.string :state
      t.string :landmark
      t.integer :pincode

      t.timestamps null: false
    end
  end
end

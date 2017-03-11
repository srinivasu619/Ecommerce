class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.string :email
      t.string :password
      t.string :ownername
      t.string :enterprisename
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

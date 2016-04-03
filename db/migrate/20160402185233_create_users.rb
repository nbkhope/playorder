class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.attachment :image
      t.string :organization
      
      t.string :twitter
      t.string :facebook
      t.string :website

      t.timestamps null: false
    end
  end
end

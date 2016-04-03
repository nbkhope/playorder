class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :text
      
      t.belongs_to :product
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end

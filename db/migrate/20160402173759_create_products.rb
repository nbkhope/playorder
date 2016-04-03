class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :city
      t.integer :category, default: 0, null: false, limit: 1
      
      t.integer :price
      t.text :story
      
      t.integer :delivery # 届くまでの日数
      t.text :phrase
      
      t.belongs_to :user
      
      t.attachment :image

      t.timestamps null: false
    end
  end
end

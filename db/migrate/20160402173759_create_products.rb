class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :city
      t.string :category
      t.integer :price
      t.integer :delivery
      t.text :sign
      t.text :story
      t.belongs_to :project

      t.timestamps null: false
    end
  end
end

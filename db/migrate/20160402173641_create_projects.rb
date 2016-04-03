class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :voice
      
      t.datetime :deadline
      t.integer :goal_amount
      
      t.belongs_to :product
      t.belongs_to :user
      
      t.attachment :image

      t.timestamps null: false
    end
  end
end

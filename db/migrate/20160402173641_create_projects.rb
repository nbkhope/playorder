class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :voice

      #t.     :fund # 一対多 Fund
      t.datetime :deadline
      t.integer :goal_amount
      #          :product
      #          :owner
      #          :activities

      t.timestamps null: false
    end
  end
end

class CreateFunds < ActiveRecord::Migration
  def change
    create_table :funds do |t|
      t.integer :amount
      t.belongs_to :user
      t.belongs_to :project

      t.timestamps null: false
    end
  end
end

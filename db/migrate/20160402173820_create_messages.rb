class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.belongs_to :user
      t.belongs_to :project
      
      t.timestamps null: false
    end
  end
end

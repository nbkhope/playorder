class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      #users
      #projects
      #products
      t.timestamps null: false
    end
  end
end

class CreateInvitedUsers < ActiveRecord::Migration
  def change
    create_table :invited_users do |t|
      t.boolean :accepted
      
      t.belongs_to :user
      t.belongs_to :project

      t.timestamps null: false
    end
  end
end

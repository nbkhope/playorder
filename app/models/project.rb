class Project < ActiveRecord::Base
  has_many :comments
  has_many :invited_users

  belongs_to :user
  belongs_to :product

end

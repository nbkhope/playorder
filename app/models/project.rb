class Project < ActiveRecord::Base
  has_many :comments
  has_many :invited_users
  has_many :funds
  has_many :activities

  belongs_to :user
  belongs_to :product
end

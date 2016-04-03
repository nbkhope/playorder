class Project < ActiveRecord::Base
  has_many :comments
  has_many :invited_users
  has_many :funds
  has_many :activities

  belongs_to :user
  belongs_to :product
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/account/account-icon.png"
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end

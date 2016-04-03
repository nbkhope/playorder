class User < ActiveRecord::Base
  has_many :comments
  has_many :products
  has_attached_file :image, styles: { medium: "300x300>", thumb: "50x50#" }, default_url: "/images/account/account-icon.png"
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end

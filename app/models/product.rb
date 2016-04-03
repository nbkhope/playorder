class Product < ActiveRecord::Base
  has_many :projects
  belongs_to :user
  enum category: {wear: 0, eat: 1, touch: 2, travel: 3, listen: 4}
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/account/account-icon.png"
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end

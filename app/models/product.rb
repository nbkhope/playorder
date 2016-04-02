class Product < ActiveRecord::Base
  has_many :projects
  enum category: {wear: 0, eat: 1, touch: 2, travel: 3, listen: 4}
end

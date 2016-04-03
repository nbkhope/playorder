
comment_data = [
  {:text => 'I want this!!'},
  {:text => "No, I don't want this."},
  {:text => "No, I want this!!"}
]

after :products do
  puts "Create #{comment_data.count} Comments data"
  Product.all.each_with_index do |product, i|
    comments = comment_data.map do |c|
      comment = Comment.create(c)
      comment.user = User.all[rand(User.all.count)]
      comment
    end
    product.comments = comments
  end
end

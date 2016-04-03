
puts "Inserting seed data for Product table..."

products_data = [
  {
    :title => 'Global Pants',
    :phrase => "Tell us about your needs and we'll introduce you to several experienced professionals in your area who are ready to complete your project.",
    :delivery => 10,
    :city => 'Tokyo',
    :price => 100,
    :image => 'main/card-1.png'
  },
  {
    :title => 'Korean Sweets',
    :phrase => "Tell us about your needs and we'll introduce you to several experienced professionals in your area who are ready to complete your project.",
    :delivery => 10,
    :city => 'Tokyo',
    :price => 100,
    :image => 'main/card-3.png'
  },
  {
    :title => 'Iron Man Mask',
    :phrase => "Tell us about your needs and we'll introduce you to several experienced professionals in your area who are ready to complete your project.",
    :delivery => 10,
    :city => 'Tokyo',
    :price => 100,
    :image => 'main/card-2.png'
  },
  {
    :title => 'Global Pants',
    :phrase => "Tell us about your needs and we'll introduce you to several experienced professionals in your area who are ready to complete your project.",
    :delivery => 10,
    :city => 'Tokyo',
    :price => 100,
    :image => 'main/card-1.png'
  }
]

# enum category: {wear: 0, eat: 1, touch: 2, travel: 3, listen: 4}
categories = [
  0, 1, 2, 3, 4
]

after :users do
  puts "Create #{products_data.count} Product data"
  categories.each do |category|
    2.times do
      products_data.each_with_index do |data, i|
        params = data.dup
        params[:category] = category
        file_path = correct_path(params[:image])
        params[:image] = File.open(file_path)
        product = Product.create(params)
        product.user = User.all[rand(User.count)]
        product.save
      end
    end
  end
end

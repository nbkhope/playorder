require './db/seeds.rb'
puts "Inserting seed data for User table..."

users = [
  {
    :name => 'Shun Yamada',
    :email => 'yamada@gmail.com',
    :password => 'yamada',
    :image => 'users/shun_yamada.jpg',
    :organization => 'Playorder',
  },
  {
    :name => 'Yuki Asano',
    :email => 'asano@gmail.com',
    :password => 'asano',
    :image => 'users/yuki_asano.jpg',
    :organization => 'Realm',
  },
  {
    :name => 'Yusuke Nakamura',
    :email => 'nakamura@gmail.com',
    :password => 'nakamura',
    :image => 'users/yusuke_nakamura_v1.jpg',
    :organization => 'Startup Cast',
  },
  {
    :name => 'Yusuke Nakamura',
    :email => 'nakamura@gmail.com',
    :password => 'nakamura',
    :image => 'users/yusuke_nakamura_v2.jpg',
    :organization => 'Startup Cast',
  },
  {
    :name => 'Yusuke Nakamura',
    :email => 'nakamura@gmail.com',
    :password => 'nakamura',
    :image => 'users/yusuke_nakamura_v3.jpg',
    :organization => 'Startup Cast',
  },
  {
    :name => 'Yusuke Nakamura',
    :email => 'nakamura@gmail.com',
    :password => 'nakamura',
    :image => 'users/yusuke_nakamura_v4.jpg',
    :organization => 'Startup Cast',
  },
  {
    :name => 'Yuka Suzuki',
    :email => 'suzuki@gmail.com',
    :password => 'suzuki',
    :image => 'users/mean.jpg',
    :organization => "Joy's place",
  },
  {
    :name => 'Ross Dyson',
    :email => 'ross@gmail.com',
    :password => 'ross',
    :image => 'users/ross.jpg',
    :organization => "Hacker house",
  },
  {
    :name => 'Aoi Takeda',
    :email => 'aoi@gmail.com',
    :password => 'aoi',
    :image => 'users/aoi.jpg',
    :organization => "Colleage in San Jose",
  },
]

puts "Create #{users.count} User data"
users.each do |user|
  params = user.dup
  params[:image] = File.open(correct_path(user[:image]))
  User.create(params)
end

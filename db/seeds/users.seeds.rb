require './db/seeds.rb'
puts "Inserting seed data for User table..."

users = [
  {
    :name => 'Shun Yamada',
    :email => 'yamada@gmail.com',
    :password => 'yamada',
    :image => 'users/shun_yamada.jpg',
    :organization => 'Playorder',
    :twitter => 'https://twitter.com/',
    :facebook => 'https://www.facebook.com/',
    :website => 'http://hatchstudioinc.com/'
  },
  {
    :name => 'Yuki Asano',
    :email => 'asano@gmail.com',
    :password => 'asano',
    :image => 'users/yuki_asano.jpg',
    :organization => 'Realm',
    :twitter => 'https://twitter.com/',
    :facebook => 'https://www.facebook.com/',
    :website => 'http://hatchstudioinc.com/'
  },
  {
    :name => 'Yusuke Nakamura',
    :email => 'nakamura@gmail.com',
    :password => 'nakamura',
    :image => 'users/yusuke_nakamura_v1.jpg',
    :organization => 'Startup Cast',
    :twitter => 'https://twitter.com/',
    :facebook => 'https://www.facebook.com/',
    :website => 'http://hatchstudioinc.com/'
  },
  {
    :name => 'Yusuke Nakamura',
    :email => 'nakamura@gmail.com',
    :password => 'nakamura',
    :image => 'users/yusuke_nakamura_v2.jpg',
    :organization => 'Startup Cast',
    :twitter => 'https://twitter.com/',
    :facebook => 'https://www.facebook.com/',
    :website => 'http://hatchstudioinc.com/'
  },
  {
    :name => 'Yusuke Nakamura',
    :email => 'nakamura@gmail.com',
    :password => 'nakamura',
    :image => 'users/yusuke_nakamura_v3.jpg',
    :organization => 'Startup Cast',
    :twitter => 'https://twitter.com/',
    :facebook => 'https://www.facebook.com/',
    :website => 'http://hatchstudioinc.com/'
  },
  {
    :name => 'Yusuke Nakamura',
    :email => 'nakamura@gmail.com',
    :password => 'nakamura',
    :image => 'users/yusuke_nakamura_v4.jpg',
    :organization => 'Startup Cast',
    :twitter => 'https://twitter.com/',
    :facebook => 'https://www.facebook.com/',
    :website => 'http://hatchstudioinc.com/'
  },
  {
    :name => 'Yuka Suzuki',
    :email => 'suzuki@gmail.com',
    :password => 'suzuki',
    :image => 'users/mean.jpg',
    :organization => "Joy's place",
    :twitter => 'https://twitter.com/',
    :facebook => 'https://www.facebook.com/',
    :website => 'http://hatchstudioinc.com/'
  },
  {
    :name => 'Ross Dyson',
    :email => 'ross@gmail.com',
    :password => 'ross',
    :image => 'users/ross.jpg',
    :organization => "Hacker house",
    :twitter => 'https://twitter.com/',
    :facebook => 'https://www.facebook.com/',
    :website => 'http://hatchstudioinc.com/'
  },
  {
    :name => 'Aoi Takeda',
    :email => 'aoi@gmail.com',
    :password => 'aoi',
    :image => 'users/aoi.jpg',
    :organization => "Colleage in San Jose",
    :twitter => 'https://twitter.com/',
    :facebook => 'https://www.facebook.com/',
    :website => 'http://hatchstudioinc.com/'
  },
]

puts "Create #{users.count} User data"
users.each do |user|
  params = user.dup
  params[:image] = File.open(correct_path(user[:image]))
  User.create(params)
end

require './db/seeds.rb'
puts "Inserting seed data for User table..."

users = [
  {
    :name => 'Shun Yamada',
    :email => 'yamada@gmail.com',
    :password => 'yamada',
    :image => 'account/profile-icon.png',
    :organization => 'Playorder',
  },
  {
    :name => 'Yuki Asano',
    :email => 'asano@gmail.com',
    :password => 'asano',
    :image => 'main/yuuki-cardicon.png',
    :organization => 'Realm',
  },
  {
    :name => 'Yusuke Nakamura',
    :email => 'nakamura@gmail.com',
    :password => 'nakamura',
    :image => 'main/yukke-cardicon.png',
    :organization => 'Startup Cast',
  },
  {
    :name => 'Yuka Suzuki',
    :email => 'suzuki@gmail.com',
    :password => 'suzuki',
    :image => 'main/korean-cardicon.png',
    :organization => "Joy's place",
  },
]

puts "Create #{users.count} User data"
users.each do |user|
  params = user.dup
  params[:image] = File.open(correct_path(user[:image]))
  User.create(params)
end

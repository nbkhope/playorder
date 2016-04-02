
puts "Inserting seed data for User table..."

users = [
  {
    :name => 'Shun Yamada',
    :email => 'yamada@gmail.com',
    :password => 'yamada'
  },
  {
    :name => 'Yuki Asano',
    :email => 'asano@gmail.com',
    :password => 'asano'
  },
  {
    :name => 'Yusuke Nakamura',
    :email => 'nakamura@gmail.com',
    :password => 'nakamura'
  },
  {
    :name => 'Yuka Suzuki',
    :email => 'suzuki@gmail.com',
    :password => 'suzuki'
  },
]

puts "Create #{users.count} User data"
users.each do |user|
  User.create(user)
end

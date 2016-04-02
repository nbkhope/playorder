# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

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

projects = [
  {
    :title => 'Great Pants Onizuka',
    :voice => "Hi, what's up guys I'm shun, tinko star!!",
    :deadline => DateTime.parse('2016-04-10'),
    :goal_amount => 1000
  }
]

comments = [
  [
    {:text => 'I want this!!'},
    {:text => "No, I don't want this."},
    {:text => "No, I want this!!"}
  ]
]

puts "Create #{projects.count} Project data"
projects.each_with_index do |project, i|
  a = Project.create(project)
  comments = comments[i].map do |c|
    c = Comment.create(c)
    c.user = User.all[rand(users.count)]
    c
  end
  a.comments = comments
end

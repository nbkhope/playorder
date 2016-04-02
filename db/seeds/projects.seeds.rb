
puts "Inserting seed data for User table..."

projects = [
  {
    :title => 'Great Pants Onizuka',
    :voice => "Hi, what's up guys I'm shun, tinko star!!",
    :deadline => DateTime.parse('2016-04-10'),
    :goal_amount => 1000
  }
]

after :users do
  puts "Create #{projects.count} Project data"
  projects.each_with_index do |project, i|
    Project.create(project)
  end
end


comment_data = [
  {:text => 'I want this!!'},
  {:text => "No, I don't want this."},
  {:text => "No, I want this!!"}
]

after :projects do
  puts "Create #{comment_data.count} Project data"
  Project.all.each_with_index do |project, i|
    comments = comment_data.map do |c|
      comment = Comment.create(c)
      comment.user = User.all[rand(User.all.count)]
      comment
    end
    project.comments = comments
  end
end

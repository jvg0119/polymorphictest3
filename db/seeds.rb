# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# create users
# User.create!(
#   name: "Joe",
#   email: "joe@example.com",
#   password: "password",
#   role: "admin"
# )
# User.create!(
#   name: "Member",
#   email: "member@example.com",
#   password: "password"
# )
# 5.times do
#   User.create!(
#     name: RandomData.random_name,
#     email: RandomData.random_email,
#     password: RandomData.random_sentence
#   )
# end
# users = User.all

# create topics
1.upto(10) do |n|
  Topic.create!(
  title: "Topic Title number #{n} for tesing",
  body: "topic body #{n} -- Lorem Ipsum is simply dummy text of the printing and typesetting industry."
  )
end
topics = Topic.all

# Post.destroy_all
# create posts
50.times do |n|
  Post.create!(
  title: "Post Title number #{n} for testing",
  body: "post body #{n} -- It is a long established fact that a reader will be distracted by",
  topic: topics.sample,
  #user: users.sample
  )
end
posts = Post.all

# create comments
# 100.times do
#   Comment.create!(
#   body: RandomData.random_paragraph,
#   post: posts.sample,
#   user: users.sample
#   )
# end

puts "".center(40,"*")
puts
puts "Finish seeding".center(40)
#puts "#{User.count} = users created".center(40)
#puts "#{User.admin.count} = admin users created".center(40)
#puts "#{User.member.count} = member users created".center(40)
puts "#{Topic.count} = topics created".center(40)
puts "#{Post.count} = posts created".center(40)
#puts "#{Comment.count} = comments created".center(40)
puts
puts "".center(40,"*")

# puts
# puts "=============================="
# puts "Post List:"
# Post.all.each do |post|
#   puts post.title
#   puts post.body
# end
#
# puts
# puts "=============================="
# puts "Comments List:"
# Comment.all.each do |comment|
#   puts comment.body
# end

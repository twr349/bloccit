require 'random_data'

5.times do
   User.create!(
   name:     RandomData.random_name,
   email:    RandomData.random_email,
   password: RandomData.random_sentence
   )
 end
 users = User.all

15.times do
   Topic.create!(
     name:         RandomData.random_word,
     description:  RandomData.random_sentence
   )
 end
 topics = Topic.all

50.times do 
    post = Post.create!(
        user:   users.sample,
        topic:  topics.sample,
        title: RandomData.random_word,
        body: RandomData.random_sentence
    )
 post.update_attribute(:created_at, rand(10.minutes .. 1.year).ago)
 rand(1..5).times { post.votes.create!(value: [-1, 1].sample, user: users.sample) }
end
posts = Post.all


100.times do
    Comment.create!(
        user: users.sample,
        post: posts.sample,
        body: RandomData.random_sentence
    )
end



# Create an admin user
 admin = User.create!(
   name:     'Admin User',
   email:    'admin@example.com',
   password: 'helloworld',
   role:     'admin'
 )
 
 # Create a member
 member = User.create!(
   name:     'Member User',
   email:    'member@example.com',
   password: 'helloworld'
 )
 
 me = User.create!(
    name: 'Tyler Roberts',
    email: 'twr349@gmail.com',
    password: 'password',
    role: 'admin'
)
 
 


puts "Seed finished"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{Vote.count} votes created"


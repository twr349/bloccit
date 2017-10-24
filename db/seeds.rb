require 'random_data'

50.times do 
    Post.create!(
        title: RandomData.random_sentence,
        body: RandomData.random_paragraph
    )
end
posts = Post.all

100.times do
    Comment.create!(
        post: posts.sample,
        body: RandomData.random_paragraph
    )
end

Post.find_or_create_by!(title: "Unique", body: "Unique Unique Unique")
Comment.find_or_create_by!(body: "Unique Comment")

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"

50.times do 
    Advertisement.create!(
        title: RandomData.random_sentence,
        copy: RandomData.random_paragraph,
        price: RandomData.random_interger
        )
end
advertisements = Advertisement.all

puts "#{Advertisement.count} advertisments created"    
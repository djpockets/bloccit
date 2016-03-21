require 'random_data'
# Create Posts
50.times do
  Post.create!(
  title: RandomData.random_sentence,
  body: RandomData.random_paragraph
  )
end
posts = Post.all

#Create comments
100.times do
  Comment.create!(
  post: posts.sample,
  body: RandomData.random_paragraph
  )
end


Post.find_or_create_by(title: "Unique Title", body: "Unique post body")

Comment.find_or_create_by(body: "Unique Comment Body")

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"

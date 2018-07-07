require 'faker'

10.times.each do
  Post.create(title: Faker::Name.name , body: Faker::ChuckNorris.fact)
end

Post.all.each do |post|
  10.times.each do
    Comment.create(content: Faker::HowIMetYourMother.quote , post: post)
  end
end

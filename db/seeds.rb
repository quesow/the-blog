require 'faker'

20.times.each do
  Post.create(title: Faker::Lorem.sentence, body: Faker::Lorem.paragraph(rand(5..10)))
end

Post.all.each do |post|
  10.times.each do
    Comment.create(content: Faker::HowIMetYourMother.quote , post: post)
  end
end

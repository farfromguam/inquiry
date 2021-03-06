# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




5.times do |x|
  User.create(
    username: Faker::Internet.user_name
  )
end


5.times do |x|
  Question.create(
    body: "what is #{Faker::Number.number(2)} #{['+','-','*','/'].sample} #{Faker::Number.number(2)}"
  )
end


5.times do |x|
  question = Question.all.sample

  Response.create(
    question: question,
    body: "I Don't Know"
  )
end

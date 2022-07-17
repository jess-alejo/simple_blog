# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(email: "john.doe@gmail.com", password: "password")
User.create(email: "jane.doe@gmail.com", password: "password")

5.times do
  User.first(2).each do |user|
    Post.create(
      title: Faker::Lorem.question,
      subtitle: Faker::Lorem.sentences(number: rand(3..5)).join(" "),
      body: Faker::Lorem.paragraphs(number: rand(50..100)).join(" "),
      user:
    )
  end
end

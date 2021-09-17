# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "clearing old data..."

# User.destroy_all

# puts "seeding users..."

# 5.times do User.create(
#     firstname: Faker::Name.first_name,
#     lastname: Faker::Name.last_name,
#     username: Faker::Twitter.unique.screen_name,
#     email: Faker::Internet.unique.email,
#     password_digest: Faker::Internet.unique.password
#   )

# Book.destroy_all

# puts "seeding books..."

# 50.times do Book.create(
#   title: Faker::Book.title,
#   author: Faker::Name.name
#   )
# end

UserBook.destroy_all

puts "seeding UserBook..."

75.times do UserBook.create(
  book_id: rand(51..100),
  user_id: rand(1..5),
  description: Faker::Lorem.paragraph(sentence_count: 8),
  read_status: ["Not Begun", "In Progress", "Completed", "Abandoned"].sample,
  is_notes_added: false
  )
end

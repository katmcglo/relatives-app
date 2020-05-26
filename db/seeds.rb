# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
require 'faker'

puts 'Creating 50 fake users...'
fritz = User.create(email: "fritz@hawaii.com", password: "123456")
49.times do
  user = User.new(
    email:    Faker::Internet.email,
    password: "123456"
  )
  user.save!
  family_member = FamilyMember.new(
    name:    Faker::Name.name,
    age: Faker::Number.between(from: 1, to: 110),
    description: Faker::Lorem.paragraph(sentence_count: 2),
    kinship: Faker::Relationship.familial,
    user: user,
    city: Faker::Address.city
  )
  family_member.save!
end
puts 'Finished!'

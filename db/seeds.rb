# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

Article.delete_all
User.delete_all

User.create(email:"a@a.com", password:"123456")
User.create(email:"b@b.fr", password:"123456")

30.times do |x|
	article = Article.create(
    title: Faker::Books::Lovecraft.location,
    content: Faker::Books::Lovecraft.paragraph,
    price: Faker::Number.binary(digits: 3),
		user: User.first
  )
  puts "Création de l'article n°#{x} "
end

30.times do |x|
	article = Article.create(
    title: Faker::Books::Lovecraft.location,
    content: Faker::Books::Lovecraft.paragraph,
    price: Faker::Number.binary(digits: 3),
		user: User.last
  )
  puts "Création de l'article n°#{x} "
end
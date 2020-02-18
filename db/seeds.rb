# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts 'Destroying users and grand_parents...'
Booking.destroy_all
GrandParent.destroy_all
User.destroy_all
puts "Users and grand_parents destroyed !"

puts "Creating users..."
pamela = User.create!(first_name: "pamela", last_name: "prieur", email: "pamela.prieur@gmail.com", password: "123456")
virginia = User.create!(first_name: "virginia", last_name: "atenza", email: "virginia.atenza@gmail.com", password: "123456")
ashley = User.create!(first_name: "ashley", last_name: "hoze", email: "ashleyhoze@gmail.com", password: "123456")
benjamin = User.create!(first_name: "benjamin", last_name: "dupont", email: "pdp@gmail.com", password: "123456")
xavier = User.create!(first_name: "xavier", last_name: "tl", email: "xavier@tl.com", password: "123456")

puts "creating gp..."
romain = GrandParent.create!(user: pamela, first_name: "romain", last_name: "dupuit", age: 78, description: "Papi gateau, experience à partager, ps: parlez fort, je suis un peu sourd", hobby: "j'adore manger en cachette", city: "paris", price: 30)
bernard = GrandParent.create!(user: virginia, first_name: "bernard", last_name: "lermit", age: 86, description: "Venez passer un moment de detente dans notre maison à Provins", hobby: "jardinage", city: "provins", price: 40)
josette = GrandParent.create!(user: ashley, first_name: "josette", last_name: "lys", age: 84, description: "Mami au coeur tendre, aimerait un peu de compagnie pour partager ses souvenirs ", hobby: "parler", city: "paris", price: 45)
ginette = GrandParent.create!(user: xavier, first_name: "ginette", last_name: "dumas", age: 70, description: "Mémé dynamique, avec moi ca va bouger", hobby: "randonné", city: "lourdes", price: 45)

file = URI.open("https://avatars3.githubusercontent.com/u/57186441?v=4")
pamela.avatar.attach(io: file, filename: "pamela_avatar")

file = URI.open("https://avatars3.githubusercontent.com/u/29464477?v=4")
virginia.avatar.attach(io: file, filename: "virginia_avatar")

file = URI.open("https://avatars1.githubusercontent.com/u/55446352?v=4")
ashley.avatar.attach(io: file, filename: "ashley_avatar")

file = URI.open("https://avatars1.githubusercontent.com/u/54189912?v=4")
benjamin.avatar.attach(io: file, filename: "benjamin_avatar")

file = URI.open("https://avatars3.githubusercontent.com/u/54706761?v=4")
xavier.avatar.attach(io: file, filename: "xavier_avatar")

file = URI.open("https://images.unsplash.com/photo-1537099605592-8e7ccefcb0ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
romain.photos.attach(io: file, filename: "romain_photo")

file = URI.open("https://images.unsplash.com/photo-1454418747937-bd95bb945625?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
bernard.photos.attach(io: file, filename: "bernard_photo")

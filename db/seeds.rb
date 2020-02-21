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
romain = GrandParent.create!(user: pamela, first_name: "Romain", last_name: "Dupuit", age: 78, description: "Papi gateau, experience à partager. PS: parlez fort, je suis un peu sourd", hobby: "j'adore manger en cachette", city: "18 boulevard soult, Paris", price: 30)
bernard = GrandParent.create!(user: virginia, first_name: "Bernard", last_name: "Lermit", age: 86, description: "Venez passer un moment de detente dans notre maison à Provins", hobby: "jardinage", city: "38 Rue De La Pompe, 75116 Paris", price: 40)
josette = GrandParent.create!(user: ashley, first_name: "Josette", last_name: "Lys", age: 84, description: "Mami au coeur tendre, aimerait un peu de compagnie pour partager ses souvenirs ", hobby: "parler", city: "8 rue Paul Cezanne, Creteil", price: 45)
ginette = GrandParent.create!(user: xavier, first_name: "Ginette", last_name: "Dumas", age: 70, description: "Mémé dynamique, avec moi ca va bouger", hobby: "randonné", city: "29 rue de caumont, 31500 Toulouse", price: 56)
marie = GrandParent.create!(user: xavier, first_name: "Marie", last_name: "Paul", age: 76, description: "Je ne suis pas vielle, juste vintage", hobby: "faire la fête", city: "16 Villa Gaudelet, Paris", price: 45)
albert = GrandParent.create!(user: ashley, first_name: "Albert", last_name: "Dar", age: 87, description: "Je suis la douceur alliée à l'experience", hobby: "lire", city: "37 Rue Castillon, 83000 Toulon", price: 34)
rose = GrandParent.create!(user: virginia, first_name: "Rose", last_name: "Jack", age: 100, description: "Pour ecouter l'amour infini, de l'etre qui a prit mon coeur sur le titanic", hobby: "ecriture", city: "256 boulevard Voltaire, paris", price: 45)
pierre = GrandParent.create!(user: pamela, first_name: "Pierre", last_name: "Paul", age: 79, description: "Super héro qui ne porte pas de cape, on m'appelle PAPY", hobby: "films", city: "48 rue des marais, fontenay-sous-bois", price: 50)
 karim = GrandParent.create!(user: ashley, first_name: "Karim", last_name: "Azib", age: 79, description: "Vieux avant l'heure, j'étais destiné à finir seul, j'ai besoin de votre compagnie...", hobby: "Aucun", city: "48 rue des marais, fontenay-sous-bois", price: 30)


file = URI.open("https://avatars3.githubusercontent.com/u/57186441?v=4")
pamela.avatar.attach(io: file, filename: "pamela_avatar")
pamela.save

file = URI.open("https://avatars3.githubusercontent.com/u/29464477?v=4")
virginia.avatar.attach(io: file, filename: "virginia_avatar")
virginia.save

file = URI.open("https://avatars1.githubusercontent.com/u/55446352?v=4")
ashley.avatar.attach(io: file, filename: "ashley_avatar")
ashley.save

file = URI.open("https://avatars1.githubusercontent.com/u/54189912?v=4")
benjamin.avatar.attach(io: file, filename: "benjamin_avatar")
benjamin.save

file = URI.open("https://avatars3.githubusercontent.com/u/54706761?v=4")
xavier.avatar.attach(io: file, filename: "xavier_avatar")
xavier.save

file = URI.open("https://pbs.twimg.com/media/B-Kfi_BCYAAGOgA.jpg")
romain.photos.attach(io: file, filename: "romain_photo")
romain.save

file = URI.open("https://img.huffingtonpost.com/asset/5c9311a23600001e266db11d.jpeg?ops=scalefit_630_noupscale")
bernard.photos.attach(io: file, filename: "bernard_photo")
bernard.save

file = URI.open("https://img-4.linternaute.com/t8fXHsrVT8pjeKkMcm_0sUHNues=/1240x/smart/13f116f5ea0a43629ddabcaddef12433/ccmcms-linternaute/2062009.jpg")
josette.photos.attach(io: file, filename: "josette_photo")
josette.save

file = URI.open("https://charlesetcharlotte.com/wp-content/uploads/2018/02/Sans-titre.jpg")
ginette.photos.attach(io: file, filename: "ginette_photo")
ginette.save

file = URI.open("https://gal.img.pmdstatic.net/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Fgal.2Fvar.2Fgal.2Fstorage.2Fimages.2Fmedia.2Fmultiupload_du_29_aout_2016.2Fbaddie-winkle.2F3638677-1-fre-FR.2Fbaddie-winkle.2Ejpg/1140x499/quality/80/baddie-wingle-la-mamie-dejantee-dont-les-people-sont-fans.jpg")
marie.photos.attach(io: file, filename: "marie_photo")
marie.save

file = URI.open("https://tshirtfamily.fr/upload/mockup/papy-bricoleur-1542810865.png")
albert.photos.attach(io: file, filename: "albert_photo")
albert.save

file = URI.open("https://resize-parismatch.lanmedia.fr/r/625,417,forcex,center-middle/img/var/news/storage/images/paris-match/people/cinema/rose-du-film-titanic-a-100-ans-173654/1926922-1-fre-FR/Rose-du-film-Titanic-a-100-ans.jpg")
rose.photos.attach(io: file, filename: "rose_photo")
rose.save

file = URI.open("https://fac.img.pmdstatic.net/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2FFAC.2Fvar.2Ffemmeactuelle.2Fstorage.2Fimages.2Fmode.2Fnews-mode.2Fali-papy-mode-berlin-2033976.2F14365283-1-fre-FR.2Fvideo-ali-papy-de-de-86-au-top-de-la-mode.2Ejpg/737x415/quality/90/crop-from/center/video-ali-papy-de-de-86-au-top-de-la-mode.jpeg")
pierre.photos.attach(io: file, filename: "pierre_photo")
pierre.save


 file = URI.open("https://res.cloudinary.com/du2om2w67/image/upload/v1582290354/old-karim_tlld2l.jpg")
 karim.photos.attach(io: file, filename: "karim_photo")
 karim.save
















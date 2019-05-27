# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed clmand (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = [User.create(mail: "tomas@miuandes.cl", username: "tomgar12", password: "Hola1234", name: "tom", last_name: "gar", role: 3),
User.create(mail: "mauro@miuandes.cl", username: "resnak12", password: "Password123",name: "mauro", last_name: "sanchez", role: 3), 
User.create(mail: "hugo@miuandes.cl", username: "hugo12", password: "Qwer1234",name: "hugo", last_name: "dela", role: 1),
User.create(mail: "nico@miuandes.cl", username: "gor12", password: "Qwer1234",name: "nico", last_name: "gor", role: 2),
User.create(mail: "martin@miuandes.cl", username: "costa12", password: "Qwer1234",name: "martin", last_name: "concha", role: 1)]

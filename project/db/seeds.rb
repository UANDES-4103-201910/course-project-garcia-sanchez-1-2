# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = [RegistredUser.create(mail: "tomas@miuandes.com", username: "tomgar12", password: "Hola1234", name: "tom", last_name: "gar", role: 3),
RegistredUser.create(mail: "mauro@miuandes.com", username: "resnak12", password: "Password123",name: "mauro", last_name: "sanchez", role: 3), 
RegistredUser.create(mail: "hugo@miuandes.com", username: "hugo12", password: "Qwer1234",name: "hugo", last_name: "dela", role: 1),
RegistredUser.create(mail: "nico@miuandes.com", username: "gor12", password: "Qwer1234",name: "nico", last_name: "gor", role: 2),
RegistredUser.create(mail: "martin@miuandes.com", username: "costa12", password: "Qwer1234",name: "martin", last_name: "concha", role: 1)]

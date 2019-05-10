# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = [RegistredUser.new(mail: "tom@us.com", username: "tomgar12", password: "Qwer1234", name: "tom", last_name: "gar"),
RegistredUser.new(mail: "mau@us.com", username: "resnak12", password: "Qwer1234",name: "mauro", last_name: "sanchez"), 
RegistredUser.new(mail: "hug@us.com", username: "hugo12", password: "Qwer1234",name: "hugo", last_name: "dela"),
RegistredUser.new(mail: "nic@us.com", username: "aspee12", password: "Qwer1234",name: "nico", last_name: "gor"),
RegistredUser.new(mail: "mar@us.com", username: "costa12", password: "Qwer1234"),name: "martin", last_name: "concha"]

for u in users do 
	u.save!
end

admins = [Admin.new(mail: "admin1@ad.com", password: "Qwer123", username: "admin11", geofence: "Las condes"),
Admin.new(mail: "admin2@ad.com", password: "Qwer123", username: "admin2", geofence: "Lo barnechea"),
Admin.new(mail: "admin3@ad.com", password: "Qwer123", username: "admin3", geofence: "Vitacura")]

for a in admins do 
	a.save!
end

sys = SystemAdmin.new(mail: "system@sy.com", username: "super1", password: "Qwer123")

sys.save!




# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = [RegistredUser.new(mail: "t@us.com", username: "tomgar", password: "1234"),
Registered_user.new(mail: "m@us.com", username: "resnak", password: "1234"), 
Registered_user.new(mail: "h@us.com", username: "hugo", password: "1234"),
Registered_user.new(mail: "n@us.com", username: "aspee", password: "1234"),
Registered_user.new(mail: "m@us.com", username: "costa", password: "1234")]

for u in users do 
	u.save!
end

admins = [Admin.new(mail: "admin1@ad.com", password: "123", username: "admin1", geofence: "Las condes"),
Admin.new(mail: "admin2@ad.com", password: "123", username: "admin2", geofence: "Lo barnechea"),
Admin.new(mail: "admin3@ad.com", password: "123", username: "admin2", geofence: "Vitacura")]

for a in admins do 
	a.save!
end

sys = SystemAdmin.new(mail: "system@sy.com", username: "super1", password: "123")

sys.save!




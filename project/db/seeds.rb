# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed clmand (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = [
User.create(email: "tomas@miuandes.cl", username: "tomgar12", password: "Hola1234", name: "Tom", last_name: "Gar", role: 3),
User.create(email: "mauro@miuandes.cl", username: "resnak12", password: "Password123",name: "Mauro", last_name: "Sanchez", role: 3), 
User.create(email: "nico@miuandes.cl", username: "gor12", password: "qwer234",name: "Nico", last_name: "Gor", role: 2),
User.create(email: "martin@miuandes.cl", username: "costa12", password: "qwer1234",name: "Martin", last_name: "Concha", role: 1),
User.create(email: "hugo@miuandes.cl", username: "hugo12", password: "qwer1234",name: "Hugo", last_name: "De la Fuente", role: 1),
User.create(email: "prueba@miuandes.cl", username: "prueba1", password: "password123",name: "Prueba", last_name: "De Fiesta", role: 1)
User.create(email: "coni@finis.cl", username: "Coni99", password: "password123",name: "Coni", last_name: "Contreras", role: 1)]

#Post.create(title: "Post1", description: "Desc1", body: "wneeslssl", city: "santiago", country: "pim pim", user_id: 5)
#Post.create(title: "Post2", description: "Desc1", body: "wneeslssl", city: "santiago", country: "pim pim", user_id: 5)
#Post.create(title: "Post3", description: "Desc1", body: "wneeslssl", city: "santiago", country: "pim pim", user_id: 5)


title = ['Plis dont eat meet', 'Rancagua exits guys!','I like pudin', 'Hail hydra (with respect)','Polorincon comeback!!!!!', 'Why not?','Dogs are awasome'] #7

des = ['Plis comment', 'I would like if you press like', 'Alla MADRID', 'Go Raptors','Messi its overrated', 'Mica plis dont destroy everything'] #6

body = ['hello im here to entertaiment you, if you dont want to lisen, pls give me money ','Did you like more infinity war or endgame? be honest', 'whatever','we need you, plis comeback'] #3

city = ['Santiago', 'Rancagua', 'Viña']  

country = ['Chile']
u= [4,5,7]
count = [1,2,3,4,5,6,7,8,9,10]
u.each {|u|
	count.each { |c|
		uid = u
		t = title[rand(7)]
		d = des[rand(3)]
		c = city[rand(3)]
		b = body[rand(3)]
		ct = country[1] 
		Post.create(title: t, description: d, body: b, city: c, country: ct, user_id: uid)
	}

}
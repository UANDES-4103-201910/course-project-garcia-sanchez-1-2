class RegistredUser < ApplicationRecord
	has_one :black_list
	has_one :profile
	has_many :inappropriate
	validates :password, length: {in: 8..25}
  	validates :mail, presence: true, uniqueness: true, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "Invalid email"}
  	validates :username, presence: true, uniqueness: true, length: {in: 3..20}
  	#validates :adminorsystem 

  	
  	def adminorsystem
  		if admin == true && asystem == true
  			record.errors.add( "You can only be one thing! sorry")
  		end
  	end

end

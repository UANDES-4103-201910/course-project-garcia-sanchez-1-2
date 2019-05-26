class RegistredUser < ApplicationRecord
	has_one :black_list
	has_one :profile
	has_many :inappropriate
	validates :password, length: {in: 8..25}
  validates :mail, presence: true, uniqueness: true, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "Invalid email"}
  validates :username, presence: true, uniqueness: true, length: {in: 3..20}
  validates :role, presence: true,  inclusion: 0..3
  # 0-> guest, 1-> user, 2-> admin, 3-> system admin 
  	

end

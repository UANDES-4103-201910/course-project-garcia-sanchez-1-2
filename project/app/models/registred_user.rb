class RegistredUser < ApplicationRecord
	has_one :system_admin_black_list
	has_one :admin_black_list
	has_one :profile
	has_many :user_inappropriate
	validates :password, length: {in: 8..15}
  	validates :mail, presence: true, uniqueness: true, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "Invalid email"}
  	validates :username, presence: true, uniqueness: true, length: {in: 3..20}





end

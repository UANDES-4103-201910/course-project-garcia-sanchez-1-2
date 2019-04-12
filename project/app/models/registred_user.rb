class RegistredUser < ApplicationRecord
	has_one :system_admin_black_list
	has_one :admin_black_list
	has_one :profile
	has_many :user_inappropriate

end

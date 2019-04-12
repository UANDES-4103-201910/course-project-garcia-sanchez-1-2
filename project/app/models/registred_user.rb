class RegistredUser < ApplicationRecord
	has_many :post
	has_one :profile
	belongs_to :black_list
end

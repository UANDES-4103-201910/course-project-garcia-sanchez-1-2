class BlackList < ApplicationRecord
	has_many :user
	has_many :admin
end

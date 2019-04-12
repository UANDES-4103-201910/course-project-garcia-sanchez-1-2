class Post < ApplicationRecord
	belongs_to :registred_user
	belongs_to :dumpster
	belongs_to :inappropiate
	has_many :comment
	has_many :post_image
end

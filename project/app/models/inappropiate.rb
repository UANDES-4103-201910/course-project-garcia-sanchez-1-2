class Inappropiate < ApplicationRecord
	has_many :post
	has_many :user, through :post
end

class Dumpster < ApplicationRecord
	has_many :post
	has_many :admin
end

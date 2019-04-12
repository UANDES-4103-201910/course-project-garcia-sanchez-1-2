class Admin < ApplicationRecord
	has_many :admin_black_list
	has_many :admin_dumpster
	has_many :admin_inappropriate
end

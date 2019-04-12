class SystemAdmin < ApplicationRecord
	has_many :system_admin_black_list
	has_many :system_admin_dumpster
	has_many :system_admin_inappropriate
end

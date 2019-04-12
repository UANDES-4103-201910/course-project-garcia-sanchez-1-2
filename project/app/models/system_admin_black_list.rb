class SystemAdminBlackList < ApplicationRecord
  belongs_to :user
  belongs_to :system_admin
end

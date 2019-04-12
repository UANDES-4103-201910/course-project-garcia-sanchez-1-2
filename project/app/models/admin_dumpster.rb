class AdminDumpster < ApplicationRecord
  belongs_to :post
  belongs_to :admin 
end

class Dumpster < ApplicationRecord
  belongs_to :registred_user
  belongs_to :post
end

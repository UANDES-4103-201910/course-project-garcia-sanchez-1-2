class Vote < ApplicationRecord
  belongs_to :post
  belongs_to :registred_user
end

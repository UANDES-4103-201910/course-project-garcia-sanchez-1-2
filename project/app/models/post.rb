class Post < ApplicationRecord
  #belongs_to :registred_user
  has_one :admin_dumpster
  has_one :system_admin_dumpster
  has_one :system_admin_inappropriate
  has_many :user_inappropriate
  has_many :admin_inappropriate
  has_many :comment
  has_many :post_image
  validates :title, :description, :body, presence: true
end

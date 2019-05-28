class Post < ApplicationRecord
  #belongs_to :user
  acts_as_votable
  has_one :dumpster
  has_one :inappropriate
  has_many :inappropriate
  has_many :comment
  has_many :post_image
  validates :title, :description, :body, presence: true
  
end

class Comment < ApplicationRecord
  belongs_to :post
  has_many :comment_image
end

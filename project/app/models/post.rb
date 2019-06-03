class Post < ApplicationRecord
  belongs_to :user
  acts_as_votable
  has_one :dumpster
  has_one :inappropriate
  has_many :inappropriate
  has_many :comment
  has_many :post_image
  validates :title, :description, :body, presence: true
  validate :image_type
  has_many_attached :images
  has_one_attached :files
  
  def thumbnail input
  	return self.images[input].variant(resize: "100x100").processed
  end

  private
  	def image_type
  		
  	
	  	images.each do |image|
	  		if !image.content_type.in?(%('image/jpeg image/png image/jpg' ))
	  			errors.add(:images, "invalid format.")
	  		end
	  	end	
  	end
end

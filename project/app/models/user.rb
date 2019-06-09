class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # , :lockable, :timeoutable,  and :omniauthable
  #before_action :authenticate_user!
  acts_as_voter
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable,
  		 :omniauthable, omniauth_providers: [:google_oauth2]

 def self.from_omniauth(auth)
		where(provider: auth.provider ,uid: auth.uid).first_or_create do |user|
			user.provider = auth.provider
			user.uid = auth.uid
			user.email = auth.info.email
			#user.name = auth.info.name
			user.password = Devise.friendly_token[0, 20]
		end
	end
end

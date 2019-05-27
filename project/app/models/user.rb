class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # , :lockable, :timeoutable,  and :omniauthable
  #before_action :authenticate_user!
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
end

class NewUserController < ApplicationController
	def create
		pass = params[:new_user][:password]
		password_cofirmation = params[:new_user][:password_cofirmation]
		##if pass == password_cofirmation

			@user = User.new(user_params)
			if @user.save
				flash[:success] = "User created successfully!"
				redirect_to users_path
			else
				flash[:error] = "Something went wrong, please try again."
				redirect_to users_path
			end
		##else
		#	flash[:error] = "Please enter the same password."
		#end
	end

	private
		def user_params
	      
	      params.require(:new_user).permit(:name, :last_name, :phone, :username, :password, :email)
	    end
end
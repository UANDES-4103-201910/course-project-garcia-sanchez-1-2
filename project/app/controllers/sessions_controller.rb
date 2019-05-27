class SessionsController < 	ApplicationController
	
	def new
		
	end

	def create
		#complete this method
		user = User.find_by(mail: params[:session][:mail].downcase)
		password = params[:session][:password]	

		if user && user[:password] == password
			log_in user
			redirect_to posts_path
			flash[:notice] = "Welcome To SweetUms!"

		else
			flash[:error] = "Invalid Email or password, please try again.."
			render :new
		end
	end

	def destroy
		@current_user = session[:current_user_id] = nil
		session["warden.user.user.key"][0][0] = 0
    	redirect_to root_url
	end

	def user_params
      params.require(:session).permit(:email, :password)
    end
end

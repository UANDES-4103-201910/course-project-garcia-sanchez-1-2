class SessionsController < 	ApplicationController
	
	def new
		
	end

	def create
		#complete this method
		registred_user = RegistredUser.find_by(mail: params[:session][:mail].downcase)
		password = params[:session][:password]	

		if registred_user && registred_user[:password] == password
			log_in registred_user
			redirect_to posts_path
			flash[:notice] = "Welcome To SweetUms!"

		else
			flash[:error] = "Invalid Email or password, please try again.."
			render :new
		end
	end

	def destroy
		#complete this method
		log_out
		redirect_to root_path
	end
end

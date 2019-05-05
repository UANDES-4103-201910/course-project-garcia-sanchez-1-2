class RegistrationController < ApplicationController
	def new
		registred_user = RegistredUser.new
	end

	def show
	end

	def create
	    #complete this method
	    registred_user = RegistredUser.new(registration_params)
	    
	    terms = params[:registration][:terms]
	    policy = params[:registration][:policy]
	    
	    if terms == "0"
	    	flash[:alert]  = "You have to accept Term and Conditions."
	    elsif policy == "0"
	    	flash[:alert]  = "You have to accept Use Policy."
	    end
    	if registred_user.save
    		flash[:success] = "Registration Complete!"
    		redirect_to "http://localhost:3000/"
    	else
    		flash[:error] = "Something went wrong, please try again."
    		redirect_to  "http://localhost:3000/"
    	end
    
	end	

	def registration_params
    	params.require(:registration).permit(:name, :username, :last_name, :mail, :password)
    end
end

class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
	protected

    def configure_permitted_parameters
    	# Permit the `subscribe_newsletter` parameter along with the other
    	# sign up parameters.
    	devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :last_name])
    	devise_parameter_sanitizer.permit(:account_update) do |user|
    		user.permit(:name, :last_name,:password, :password_confirmation, :current_password)
    	end
    end
end

module SessionsHelper
	def log_in(registred_user)
		session[:registred_user_id] = registred_user.id
	end
	def log_out
		session.delete(:registred_user_id)
		@current_registred_user = nil
	end
end
	
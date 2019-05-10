module SessionsHelper
	def log_in(registred_user)
		session[:registred_user_id] = registred_user.id
	end
	def log_out
		session.delete(:registred_user_id)
		@current_registred_user = nil
	end
	def log_inA(admin)
		session[:admin_id] = admin.id
	end
	def log_outA
		session.delete(:admin_id)
		@current_admin = nil
	end
	def log_inS(system_admin)
		session[:system_admin_id] = system_admin.id
	end
	def log_outS
		session.delete(:system_admin_id)
		@current_system_admin = nil
	end
end
	
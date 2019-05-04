class ApplicationController < ActionController::Base
	include SessionsHelper
	def current_registred_user
    session = session[:registred_user_id]
    if session
      @current_registred__user ||= RegistredUser.find(session)
    end
  end
end

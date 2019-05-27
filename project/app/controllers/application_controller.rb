class ApplicationController < ActionController::Base
	include SessionsHelper
	def current_registred_user
    session = session[:user_id]
    if session
      @current_user ||= User.find(session)
    end
  end
end

class SearchController < ApplicationController
  def create
  end

  def new
  end

  def index
  	location = params[:search][:location]
  	nick_name = params[:search][:nick_name]
  	if location?
  		@search = RegistredUser.where(city: location || country: location)
  	elsif nick_name?
  		@search = RegistredUser.where(username: nick_name)
  	elsif location? && nick_name
  		@search = RegistredUser.where(username: nick_name || city: location || country: location)
  	else
  		flash[:error] = "You have to select at least one of the options."
  			
  end
end

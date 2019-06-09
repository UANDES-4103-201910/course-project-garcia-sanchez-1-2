class SearchController < ApplicationController
  def create
  end

  def new
  end

  def index
    if params[:search].blank?  
      redirect_to(root_path, alert: "Its empty !") and return  
    else  
      @users = User.where(["username or city or country LIKE ?", "%#{params[:search]}%"])
      #@citys = User.where(["city LIKE ?", "%#{params[:search]}%"])
      @posts = Post.where(["title or description LIKE ?", "%#{params[:search]}%"] )
    end   
  end
end

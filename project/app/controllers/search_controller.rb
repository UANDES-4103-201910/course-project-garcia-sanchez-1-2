class SearchController < ApplicationController
  def create
  end

  def new
  end

  def index
    if params[:search].blank?  
      redirect_to(root_path, alert: "Its empty !") and return  
    else  
      @users = User.where(["username || city || country LIKE ?", "%#{params[:search]}%"])
      #@citys = User.where(["city LIKE ?", "%#{params[:search]}%"])
      @posts = Post.where(["title || description LIKE ?", "%#{params[:search]}%"] )

      @bl = User.where(["username LIKE ?", "%#{params[:search]}%"] && ["black_list LIKE ?", true])
      @dump = Post.where(["title || description LIKE ?", "%#{params[:search]}%"] && ["dumpster LIKE ?", true])
    end   
  end
end

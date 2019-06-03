class NewestController < ApplicationController
	def new
		post = Post.new
	end
	def create
		@post = Post.new(post_params)
		if @post.save
    		flash[:success] = "Published successfully!"
    		redirect_to "http://localhost:3000/posts"
    	else
    		flash[:error] = "Something went wrong, please try again."
    		redirect_to  "http://localhost:3000/posts/new"
    	end
		
	end
	def update
		
		if @post.update(post_params)
    		flash[:success] = "Puost updated successfully!"
    		redirect_to "http://localhost:3000/posts"
    	else
    		flash[:error] = "Something went wrong, please try again."
    		redirect_to  "http://localhost:3000/posts"
    	end
	end
	def post_params
      #params.require(:post).permit(:title, :description, :body, :country, :city, :geofence, :user_id)
      params.require(:newest).permit(:title, :description, :body, :country, :city).merge(user_id: current_user.id)
    end
end
	
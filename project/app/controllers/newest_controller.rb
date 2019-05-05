class NewestController < ApplicationController
	def new
		post = Post.new
	end
	def create
		@post = Post.new(post_params)
		if @post.save
    		flash[:success] = "Published was Complete!"
    		redirect_to "http://localhost:3000/posts"
    	else
    		flash[:error] = "Something went wrong, please try again."
    		redirect_to  "http://localhost:3000/posts"
    	end
		
	end
	def update
		
		if @post.update(post_params)
    		flash[:success] = "Published was Complete!"
    		redirect_to "http://localhost:3000/posts"
    	else
    		flash[:error] = "Something went wrong, please try again."
    		redirect_to  "http://localhost:3000/posts"
    	end
	end
	def post_params
      #params.require(:post).permit(:title, :description, :body, :country, :city, :geofence, :registred_user_id)
      params.require(:newest).permit(:title, :description, :body)
    end
end
	
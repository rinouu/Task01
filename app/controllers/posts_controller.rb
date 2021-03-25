class PostsController < ApplicationController
	def index
  		@posts = Post.all
  	end

  	def new
  		@post = Post.new
  	end

  	def create
	  	@post = Post.new(post_params)
	  	if params[:back]
	    	render :new
	    else
		    if @post.save
		    	redirect_to posts_path, notice: "Post created!"
		    else
		      	render :new
		    end
		end
  	end

  	def edit
  	end
end

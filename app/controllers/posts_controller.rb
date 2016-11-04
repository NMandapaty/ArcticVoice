class PostsController < ApplicationController
	before_action :find_post, only: [:edit, :update, :show, :delete]

	def index
    	@posts = Post.all
  	end

  	def new
    	@post = Post.new
  	end

  	def create
	    @post = Post.new(params[:post].permit(:title, :body, :longitude, :latitude))
	    if @post.save 
	      flash[:notice] = "Saved new post!"
	      redirect_to @post
	    else
	      flash[:alert] = "Error-d while saving a new post!"
	      render :new
	    end
  	end

  	def edit
  	end

  	def update
	    if @post.update_attributes(post_params)
	      flash[:notice] = "Updated post!"
	      redirect_to post_path(@posts)
	    else
	      flash[:alert] = "Error-d while updating post!"
	      render :edit
	    end
  	end

  	def show
  	end


  	def destroy
	    if @post.destroy
	      flash[:notice] = "Deleted post!"
	      redirect_to posts_path
	    else
	      flash[:alert] = "Error-d while trying to delete post!"
	    end
  	end

  	def post_params
    	params.require(:post).permit(:title, :body, :longitude, :latitude)
  	end

  	def find_post
    	@post = Post.find(params[:id])
  	end
end

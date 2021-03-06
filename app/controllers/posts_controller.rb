class PostsController < ApplicationController
	before_action :find_post, only: [:edit, :update, :show, :delete]
	before_filter :authenticate_user!, except: [:show, :index]

	def index
    	@posts = Post.all
  	end

  	def new
    	@post = Post.new
  	end

  	def create
	    @post = current_user.posts.build(params.require(:post).permit(:title, :body, :longitude, :latitude, :tags))
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
	      redirect_to post_path(@post)
	    else
	      flash[:alert] = "Error-d while updating post!"
	      render :edit
	    end
  	end

  	def show
  	end

  	def destroy
      begin
        @delete_post = Post.find(params[:id])
      rescue ActiveRecord::RecordNotFound => e
        @delete_post = nil
      end
     
      if @delete_post.present?
        flash[:notice] = "Deleted post!"
        @delete_post.destroy
      else
        flash[:alert] = "Error-d while trying to delete post!"
      end
      redirect_to posts_path
  	end

  	def post_params
    	params.require(:post).permit(:title, :body, :longitude, :latitude)
  	end

  	def find_post
    	@post = Post.find(params[:id])
  	end

  	def search_posts
  		term = params[:search_string]
        if term.nil?
            @posts = Post.all
        else
  		# Search posts matching tags, title, location, or author.
            @posts = Post.where('tags LIKE :term OR title LIKE :term OR location LIKE :term', term: "%#{term}%") | Post.joins(:user).where('name LIKE :term', term: "%#{term}%")
        end
        render 'home/index'
  	end
end

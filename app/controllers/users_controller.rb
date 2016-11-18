class UsersController < ApplicationController
	def show
	  @user = User.find(params[:id])
	  @user_posts = @user.posts
	  @is_me = true if current_user.id == params[:id].to_i
	end
end

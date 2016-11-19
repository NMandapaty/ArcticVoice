class UsersController < ApplicationController
	def show
	  @user = User.find(params[:id])
	  @user_posts = @user.posts
	  if current_user
	  	@is_me = true if current_user.id == params[:id].to_i
	  else
	  	@is_me = false
	  end
	end
end

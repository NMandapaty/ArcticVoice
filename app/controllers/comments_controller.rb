class CommentsController < ApplicationController
	before_filter :authenticate_user!

	def comment_params
		params.permit(:comment, :title)
	end

	def create
		post = Post.find_by(id: params[:id])
		comment = post.comments.build(comment_params)
		comment.user = current_user

		if comment.save
			flash[:notice] = "Comment has been created."
			redirect_to :back
		else
			flash[:alert] = "Comment has not been created."
		end
	end    

end
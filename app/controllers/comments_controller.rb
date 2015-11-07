class CommentsController < ApplicationController

	def create
	  @pic = Pic.find(params[:pic_id])
	  @comment = @pic.comments.new(comment_params)
	  @comment.save
	  redirect_to pic_path(@pic)
	end

	private
	def comment_params
    params.require(:comment).permit(:message)
  end
end

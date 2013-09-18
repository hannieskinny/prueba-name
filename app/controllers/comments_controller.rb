class CommentsController < ApplicationController
  
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      Notifier.send_email_to.deliver
      flash[:notice] = "Comment has been created."
      redirect_to comments_path
    else
      flash[:alert] = "Comment has not been created."
      rendirect_to new_comment_path
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:text, :state_id)
    end
end

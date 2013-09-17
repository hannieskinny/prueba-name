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
      flash[:notice] = "Comment has been created."
      redirect_to [@car]
    else
      flash[:alert] = "Comment has not been created."
      render :template => "cars/show"
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:text)
    end
end

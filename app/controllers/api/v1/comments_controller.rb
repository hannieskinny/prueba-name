class Api::V1::CommentsController < Api::V1::BaseController
  before_filter :find_comment

  def index
    respond_with(Comment.all)
  end

  def create
    comment = comment.new(params[:comment])
    if comment.save
      respond_with(comment, :location => api_v1_comment_path(comment))
    else
      respond_with(comment)
    end
  end

  private
    def find_comment
      @comment = Comment.find(params[:id])
      rescue ActiveRecord::RecordNotFound
      error = { :error => "The comment you were looking for " +
        "could not be found."}
      respond_with(error, :status => 404)
    end
end

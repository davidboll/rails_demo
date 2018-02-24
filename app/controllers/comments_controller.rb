class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    if @comment.persisted?
      flash[:success] = 'Thank you for making your voice heard!'
      redirect_back(fallback_location: root_path)
    else
      flash[:error] = 'Something went wrong, please try again.'
      redirect_back(fallback_location: root_path)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:email, :body, :article_id)
  end


end

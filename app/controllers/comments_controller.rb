class CommentsController < ApplicationController
  before_action :authorized_user, only: :create

  def create
    comment = @current_user.comments.new comment_params do |c|
      c.article_id = params[:article_id]
    end

    redirect_to article_path comment.article, anchor: 'comment-form' if comment.save
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end

class CommentsController < ApplicationController

  def index
    Comment.all
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to article_path(params[:article_id])
    else
      render article_path(params[:article_id])
    end
  end

  private

  def comment_params
    binding.pry
    params.require(:comment).permit([
      :author,
      :content,
      :article_id
      ])
  end
end

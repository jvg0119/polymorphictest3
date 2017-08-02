class CommentsController < ApplicationController

  def create
    @comment = @commentable.comments.new(comment_params)
    if @comment.save
      flash[:notice] = "Your comment was successfully posted."
    else
      flash[:error] = "There was an error saving your comment. Please try again."
    end

    if @commentable.is_a? Topic
      redirect_to @commentable
    elsif @commentable.is_a? Post
      redirect_to [@commentable.topic, @commentable]
    end

  end

  def destroy
    comment = Comment.find(params[:id])

    comment.destroy

    if @commentable.is_a? Topic
      redirect_to [@commentable]
    elsif @commentable.is_a? Post
      redirect_to [@commentable.topic, @commentable]
    end

    flash[:notice] = "Your comment was deleted."

  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end

end

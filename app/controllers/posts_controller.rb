class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # def index
  #   @posts = Post.all
  # end

  def show
  end

  def new
    @topic = Topic.find(params[:topic_id])
    @post = @topic.posts.new
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @post = @topic.posts.new(post_params)
    if @post.save
      flash[:success] = "Post was saved successfully!"
      redirect_to [@post.topic, @post]
    else
      flash[:error] = "There was an error saving post. Please try again."
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update_attributes(post_params)
      flash[:success] = "Post was updated successfully!"
      redirect_to [@post.topic, @post]
    else
      flash[:error] = "There was an error updating post. Please try again."
      render :edit
    end
  end

  def destroy
    if @post.destroy
      flash[:success] = "Post was deleted."
      redirect_to topic_path(@topic)
    end
  end

  private
  def set_post
    @topic = Topic.find(params[:topic_id])
    @post = @topic.posts.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end

end

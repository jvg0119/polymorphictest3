class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update, :destroy]

  def index
    @topics = Topic.all
  end

  def show
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      flash[:success] = "Topic was saved successfully!"
      redirect_to @topic
    else
      flash[:error] = "There was an error saving topic. Please try again."
      render :new
    end
  end

  def edit
  end

  def update
    if @topic.update_attributes(topic_params)
      flash[:success] = "Topic was updated successfully!"
      redirect_to @topic
    else
      flash[:error] = "There was an error updating topic. Please try again."
      render :edit
    end
  end

  def destroy
    if @topic.destroy
      flash[:success] = "Topic was deleted."
      redirect_to topics_url
    end
  end

  private
  def set_topic
    @topic = Topic.find(params[:id])
  end

  def topic_params
    params.require(:topic).permit(:title, :body)
  end

end

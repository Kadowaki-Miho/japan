class JapansController < ApplicationController

before_action :authenticate_user!, only:[:new,:create]
# after_action :after_create_image, only:[:create]

  def index
   @tweets = Tweet.order("created_at DESC")
  end

  def new
  end

  def create
   tweet = Tweet.new(place: create_params[:place],category: create_params[:category],user_id: current_user.id)
   tweet.set_image_url(create_params[:image])
   tweet.save
  end

  def add_like
     @like = Like.create(tweet_id: add_like_params[:tweet_id],user_id: current_user.id)
      respond_to do |format|
        format.html
        format.js
      end
      #redirect_to :back and return
  end

  private

  def create_params
   params.permit(:place, :category,:user_id,:id, :image)
  end

  def add_like_params
    params.permit(:tweet_id)
  end

end

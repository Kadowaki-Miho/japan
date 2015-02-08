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

  private

  def create_params
   params.permit(:place, :category,:user_id,:id, :image)
  end

end

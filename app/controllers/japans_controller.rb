class JapansController < ApplicationController

before_action :authenticate_user!, only:[:new,:create]

  def index
   @tweets = Tweet.all
   @images = Image.all
  end

  def new
  end

  def create
   Tweet.create(place: params[:place],category: params[:category],user_id: current_user.id)
   id = Tweet.maximum(:id)
   Image.create(image: params[:image], tweet_id: id)
  end

  private


  def create_params
   params.permit(:place, :category,:user_id,:image,:tweet_id)
  end
end

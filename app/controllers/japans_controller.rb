class JapansController < ApplicationController

before_action :authenticate_user!, only:[:new,:create]

  def index
   @tweets = Tweet.all
  end

  def new
  end

  def create
   Tweet.create(place: params[:place], image: params[:image], category: params[:category])
  end

  private


  def create_params
   params.permit(:place, :image, :category)
  end
end

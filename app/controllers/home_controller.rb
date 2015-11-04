class HomeController < ApplicationController
  rescue_from Twitter::Error::NotFound, with: :need_valid_handle

  def index
  end

  def tweets
    @handle = params[:handle]

    @tweets = TwitterClient.find_tweets(@handle)
  end

  private

  def need_valid_handle
    render :need_valid_handle
  end
end

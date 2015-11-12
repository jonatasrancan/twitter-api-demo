class HomeController < ApplicationController
  rescue_from Twitter::Error::NotFound, with: :need_valid_handle

  def index
  end

  def tweets
    @handle = params[:handle]

    @tweets = find_tweets
  end

  private

  def need_valid_handle
    flash['error'] = 'Please inform a valid twitter handle'
    render :need_valid_handle
  end

  def find_tweets
    Rails.cache.fetch(['tweets', @handle], expires_in: 5.minutes) do
      TwitterClient.find_tweets(@handle)
    end
  end
end

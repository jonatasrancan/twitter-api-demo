class TwitterClient
  def self.find_tweets(*attr)
    new(*attr).find_tweets
  end

  def initialize(handle, twitter_rest_client = ::Twitter::REST::Client)
    @handle = handle
    @twitter_rest_client = twitter_rest_client.new do |config|
      config.consumer_key    = ENV['TWITTER_CONSUMER_KEY']
      config.consumer_secret = ENV['TWITTER_CONSUMER_SECRET']
    end
  end

  def find_tweets
    twitter_rest_client.user_timeline(handle, count: 25)
  end

  private

  attr_reader :handle, :twitter_rest_client
end

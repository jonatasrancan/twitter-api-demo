class Tweet
  def text
    'Who am i?'
  end

  def created_at
    DateTime.now
  end
end

class TwitterClient
  def self.find_tweets(handle)
    [Tweet.new]
  end
end

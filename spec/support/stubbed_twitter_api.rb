class UserMention
  def screen_name
    'mention'
  end
end

class Tweet
  def text
    'Who am i? @mention'
  end

  def created_at
    DateTime.now
  end

  def user_mentions
    [UserMention.new]
  end
end

class TwitterClient
  def self.find_tweets(handle)
    [Tweet.new]
  end
end

module ApplicationHelper
  def format_tweet(tweet)
    text = tweet.text.dup

    tweet.user_mentions.each do |mention|
      text.gsub!("@#{mention.screen_name}", create_link(mention.screen_name))
    end

    text.html_safe
  end

  def create_link(mention)
    link_to "@#{mention}", "http://twitter.com/#{mention}"
  end

  def handle
    @handle.include?('@') ? @handle : '@' + @handle
  end
end

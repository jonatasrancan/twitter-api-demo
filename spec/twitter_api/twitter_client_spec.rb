require 'rails_helper'

describe TwitterClient do
  let(:handle) { double(:handle) }
  let(:twitter_rest_client) { double(:twitter_rest_client) }

  subject { described_class.new(handle, twitter_rest_client) }

  describe '#find_tweets' do
    it 'search for 25 tweets from the handle' do
      expect(twitter_rest_client).to receive(:new).and_return twitter_rest_client
      expect(twitter_rest_client).to receive(:user_timeline).with(handle, count: 25)

      subject.find_tweets
    end
  end
end

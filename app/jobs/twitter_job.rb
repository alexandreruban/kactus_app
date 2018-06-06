class TwitterJob < ApplicationJob

  queue_as :default

  def perform(key_word)
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['PUBLIC_TWITTER_KEY']
      config.consumer_secret     = ENV['SECRET_TWITTER_KEY']
      config.access_token        = ENV['PUBLIC_TWITTER_TOKEN']
      config.access_token_secret = ENV['SECRET_TWITTER_TOKEN']
    end
    client.search(key_word.name).take(3)
  end
end

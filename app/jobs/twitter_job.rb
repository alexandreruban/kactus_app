class TwitterJob < ApplicationJob
  require 'twitter'

  queue_as :default



  def perform(key_word)
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['PUBLIC_TWITTER_KEY']
      config.consumer_secret     = ENV['SECRET_TWITTER_KEY']
    end
    puts client.user("gem")
  end
end

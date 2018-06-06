class TweetsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @tweet = Tweet.new(username: params[:tweet][:username], content: params[:tweet][:content])
    @tweet.save
  end

  private

  def tweet_params
    params.require(:tweet).permit(:username, :content)
  end
end

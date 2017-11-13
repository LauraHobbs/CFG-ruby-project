require 'sinatra'
require 'twitter'
twitter_api = Twitter::REST::Client.new do |config|
  config.consumer_key =
  config.consumer_secret =
  config.access_token =
  config.access_token_secret = 
end

get '/' do
  @tweets = twitter_api.search("by:AlexHonnald yosemite").take(3)

  erb :tweet_list
end

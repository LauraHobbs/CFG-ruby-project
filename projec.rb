require 'sinatra'
require 'twitter'
twitter_api = Twitter::REST::Client.new do |config|
  config.consumer_key = ""
  config.consumer_secret = ""
  config.access_token = "-"
  config.access_token_secret = ""
end

search_options = {
  result_type: "recent",
  geocode: "51.50282,-0.11397,1mi"
}

get '/' do
  @tweets = twitter_api.search("firework", search_options).take(5)

  erb :tweet_list
end

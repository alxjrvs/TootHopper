#stolen and modified from https://sites.google.com/site/twitterresearch09/articles/howtobuildyourtwitterbotpart1

require 'rubygems'
require 'bundler/setup'

require 'twitter'
require 'data_mapper'
require 'heroku'
require 'tweetstream'
require './config.rb'
require './models.rb'
#def listen
  #@client = TweetStream::Client.new
  #@client.on_direct_message do |dm|
    #Tweet.create(:message => dm.text)
  #end
#end

def add_to_hopper(tweet)
  puts tweet
  Tweet.create(:message => tweet)
end

class TootHopper
  attr_accessor :twitter_config, :log, :hopper

  def initialize

    @log = DataMapper::Logger.new("log_file.log")
    @tweet_id = rand(Tweet.all.size)
    @tweet = Tweet[@tweet_id]


  end

  def post
    Twitter.update(@tweet.message)
    Tweet[@tweet_id].destroy
  end
end


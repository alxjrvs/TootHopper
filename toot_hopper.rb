#stolen and modified from https://sites.google.com/site/twitterresearch09/articles/howtobuildyourtwitterbotpart1

require 'rubygems'
require 'bundler/setup'

require 'twitter'
require 'data_mapper'
require 'heroku'
require './config.rb'
require './models.rb'

class TootHopper
  attr_accessor :twitter_config, :log, :hopper

  def initialize

    @log = DataMapper::Logger.new("log_file.log")
    @tweet_id = rand(Tweet.all.size)
    @tweet = Tweet[@tweet_id]


  end

  def post
    Twitter.update(msg)
  end
end


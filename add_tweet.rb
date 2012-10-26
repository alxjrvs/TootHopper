#require 'pry'
require './toot_hopper.rb'

#binding.pry
Tweet.create(:message => "\"#{ARGV[0]}\" - #{ARGV[1]}")


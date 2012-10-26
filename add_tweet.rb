require './toot_hopper.rb'

#binding.pry
Tweet.create(:message => ARGV[0])


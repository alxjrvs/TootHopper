#require 'pry'
require './toot_hopper.rb'

#binding.pry
THE_GODS = {:merlin => "@hotdogsladies", :john => "@johnroderick"}
Tweet.create(:message => "\"#{ARGV[0]}\" - #{THE_GODS[ARGV[1]]}")


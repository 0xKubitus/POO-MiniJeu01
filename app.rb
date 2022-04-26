require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

#binding.pry

player1 = Player.new("José")

puts player1.name
puts " "
p player1.show_state
puts " "
p player1.gets_damage(8)
puts " "
p player1.show_state
puts " "
p player1.gets_damage(5)
puts " "


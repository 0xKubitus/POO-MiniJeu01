require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

#binding.pry

player1 = Player.new("Rick")
player2 = Player.new("Morty")
puts " "
p "player1 is #{player1.name}"
p "player2 is #{player2.name}"
puts " "
player1.attacks(player2)

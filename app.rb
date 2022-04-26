require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'



player1 = Player.new("Rick")
player2 = Player.new("Morty")
puts " "

puts "START=>  Les joueurs sont : #{player1.name} et #{player2.name}"
puts " "

puts "Voici l'état de chaque joueur :"
puts player1.show_state
puts player2.show_state
puts " "


puts "MAINTENANT, PASSONS AU COMBAT !"
puts " "

# binding.pry

while player1.life_points > 0 && player2.life_points > 0 # on fait une boucle while pour faire un combat à mort 
  player1.attacks(player2, player1)
  puts " "

  if player2.life_points <= 0 || player1.life_points <= 0
    break
  end

  player2.attacks(player1, player2)
  puts " "
  
end






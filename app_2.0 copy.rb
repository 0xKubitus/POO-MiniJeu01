require 'bundler'
Bundler.require

require_relative 'lib_2.0/player_2.0'
require_relative 'lib_2.0/game_2.0'


player_one = Player.new("Rick")
player_two = Player.new("Morty")

joueur1 = HumanPlayer.new("David")
joueur2 = HumanPlayer.new("Goliath")


#binding.pry

puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "            DAVID vs. GOLIATH"
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts " "
puts "Le pauvre #{joueur1.name} ne possède qu'une simple fronde et quelques caillous\n(arme basique - Niveau: #{joueur1.weapon_level})"
puts " "
joueur2.weapon_level = 3
puts "Face à lui on retrouve le terrible #{joueur2.name} qui lui est armé d'Al-Battar\n(épée légendaire - Niveau: #{joueur2.weapon_level} - dont le nom signifie : 'l'épée des prophètes')"
puts " "
puts joueur1.show_state 
puts joueur2.show_state
puts "- _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - "
puts " "
joueur1.attacks(joueur2, joueur1)

while joueur1.life_points > 0 && joueur2.life_points > 0 # on fait une boucle while pour faire un combat à mort 
  
  joueur1.attacks(joueur2, joueur1)
  puts " "
  puts "- - - - - - - - - - - - - - - - - - - -"
  puts " "

  if joueur2.life_points <= 0 || joueur1.life_points <= 0 # on 'break' la boucle dès qu'un joueur meurt 
    break
  end

  joueur2.attacks(joueur1, joueur2)
  puts " "
  puts "- - - - - - - - - - - - - - - - - - - -"
  puts " "
  
end

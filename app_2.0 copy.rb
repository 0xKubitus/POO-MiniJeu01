require 'bundler'
Bundler.require

require_relative 'lib_2/player_2.0-copy'
require_relative 'lib_2/game_2.0-copy'

#Accueil:
puts " "
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "               POO-LANTAH"
puts "    SERAS-TU LE DERNIER SURVIVANT ?"
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts " "
puts " "
puts "    Quel es ton nom jeune aventurier(e) ?"
puts " "
print "> "
user_name = gets.chomp
puts " "
puts " "

#Initialisation du joueur:
human_player = HumanPlayer.new(user_name)
puts " J'espère que tu es prêt(e), #{human_player.name}..."
puts "...car ici, tout le monde veut ta POO !!!"
puts " "
puts "             -   -   -   -   -     "
puts " "

#human_player.show_state #<= à taper dans Pry pour verifier que le 'human_player' soit bien créé

#Initialisation des ennemis:
enemies = []
pnj1 = Player.new("Rick")
pnj2 = Player.new("Morty")
enemies << pnj1
enemies << pnj2

puts " "
puts human_player.show_state
puts " "

#Le Combat:
while human_player.life_points > 0 || (pnj1.life_points > 0 && pnj2.life_points > 0)
  puts "* * * * * * * * * * * * * * * * * * * * * * * * * * * * *"
  puts " "
  puts "Tu comptes faire quoi ce tour-ci, #{human_player.name} ?"
  puts " "
  p "a = chercher une meilleure arme"
  p "b = chercher de quoi te soigner"
  puts " "
  puts "attaquer un joueur en vue :"
  print "1 = "
  puts "#{pnj1.show_state}"
  print "2 = "
  puts "#{pnj2.show_state}"
  puts " "
  print "#{human_player.name.upcase}, ENTRE TON CHOIX ICI => "
  user_choise = gets.chomp
  puts " "
  puts "* * * * * * * * * * * * * * * * * * * * * * * * * * * * *"
  puts " "

  if user_choise.downcase == "a"
    human_player.search_weapon
  end

  if user_choise.downcase == "s"
    human_player.search_health_pack
  end

  if user_choise == "1"
    human_player.attacks(pnj1, human_player)
  end

  if user_choise == "2"
    human_player.attacks(pnj2, human_player)
  end

  puts " "
  puts "~ ~ ~ ~ ~ ~ ~ ~ ~"
  puts "ATTENTION: Les PnJs t'attaquent !"
  enemies.each do |pnj|
    if pnj.life_points > 0
      pnj.attacks(human_player, pnj)
    end
  end

  puts "----------------------------------"
  puts " "
  puts " "
  puts "CONTINUER LA PARTIE ?"
  puts "Ecris 'o' pour continuer ou n'importe quoi d'autre pour quitter le jeu."
  choice_to_continue = gets.chomp.downcase
  if choice_to_continue != "o"
    break
  else
    puts "OKAY, c'est parti pour le round suivant !"
  end

end
  


 

=begin

else
  puts "La partie est finie !"
  if human_player.life_points > 0
    puts "BRAVO A TOI TU AS SURVECU A l'ILE !!!"
  else
    puts "Tu as perdu, looser !"
  end
end # fin de la boucle 'unless'

=end


#binding.pry



















=begin

player_one = Player.new("Rick")
player_two = Player.new("Morty")

puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "            DAVID vs. GOLIATH"
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts " "

joueur1 = HumanPlayer.new("David")
joueur2 = HumanPlayer.new("Goliath")

puts "Le pauvre #{joueur1.name} ne possède qu'une simple fronde et quelques caillous\n(arme basique - Niveau: #{joueur1.weapon_level})"
puts " "
joueur2.weapon_level = 3
puts "Face à lui on retrouve le terrible #{joueur2.name} qui lui est armé d'Al-Battar\n(épée légendaire - Niveau: #{joueur2.weapon_level} - dont le nom signifie : 'l'épée des prophètes')"
puts " "
puts joueur1.show_state 
puts joueur2.show_state
puts "- _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - "
puts " "

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
  puts " "
  puts "--------------------------------------------------"
  puts " "
  joueur1.search_weapon
  puts " "
  joueur2.search_weapon #<= à ajouter pour remonter les chances de gagner de Goliath/joueur2
  puts " "
  joueur1.search_health_pack
  puts " "
  joueur2.search_health_pack #<= à ajouter pour remonter les chances de gagner de Goliath/joueur2
  puts " "
  puts "--------------------------------------------------"
  
end

=end



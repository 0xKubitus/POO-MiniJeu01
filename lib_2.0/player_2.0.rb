class Player 
  attr_accessor :name, :life_points

  def initialize(name)
    @name = name
    @life_points = 10
  end # fin de la méthode 'initialize(name)'

  def show_state
    print "-> #{name} a #{life_points} PV."
  end # fin de la méthode 'show_state'

  def attacks(playerY, playerX)
    puts "BIIIM! #{@name} attaque #{playerY.name} :"
    attack_dmg = compute_damage
    puts "  => l'attaque inflige #{attack_dmg} dégats !"
    puts " "
    playerY.gets_damage(attack_dmg)
  end # fin de la méthode 'attacks'

  def gets_damage(attack_dmg)
    @life_points = life_points - attack_dmg
    puts "#{name} a perdu #{attack_dmg} PV suite à cette attaque !"
    show_state
    puts " "

    if @life_points <= 0
      puts " "
      puts "Woopsie! #{name} s'est fait tuer ! (il n'etait pas très brave, le bougre !)"
    end
  end # fin de la méthode 'gets_damage(attack_dmg)

  def compute_damage
    return rand(1..6)
  end # fin de la méthode 'compute_damage'
  
end # fin de la classe 'Player'


#  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  


class HumanPlayer < Player








end # fin de la classe 'HumanPlayer'
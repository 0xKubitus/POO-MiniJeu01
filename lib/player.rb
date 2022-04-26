class Player 

  #Un joueur possède 2 attributs : un nom @name (string) et un niveau de vie @life_points (integer):
  attr_accessor :name, :life_points

  # a) Quand on veut créer un objet Player, on ne met que son nom en entrée
  #(car le niveau de vie est le même pour tout le monde au début => 10 pts de vie).
  def initialize(name)
    @name = name
    @life_points = 10
  end # fin de la méthode 'initialize(name)'

  # b) Code une méthode show_state qui va afficher l'état de l'objet 'Player'
  #sur laquelle elle est exécutée : "XXXX a YYY points de vie".
  def show_state
    puts "#{name} possède #{life_points} PV."
  end # fin de la méthode 'show_state'

  # c) Tu dois coder une méthode 'gets_damage' qui prend en entrée un integer => le nombre de dommages subit
  #et qui le soustraie au niveau de vie (@life_points) du joueur:
  def gets_damage(attack_dmg)
    @life_points = life_points - attack_dmg
    puts "#{name} a perdu #{attack_dmg} PV suite à cette attaque !"
    if @life_points <= 0
      puts "Woopsie! #{name} s'est fait tuer ! (il n'etait pas très brave, le bougre !)"
    end
  end # fin de la méthode 'gets_damage(attack_dmg)



            # ON EN EST LA :


  # d) On va coder une méthode 'attacks' qui permette de faire qu'un joueur attaque un autre. 
  #Ainsi, si le joueur player1 attaque le joueur player2, on aurait juste à taper player1.attacks(player2):
  def attacks(playerX)
    puts "Et BIIIM! #{@name} attaque #{playerX.name} :"
    attack_dmg = compute_damage
    puts "l'attaque inflige #{attack_dmg} dégats !"
  end # fin de la méthode 'attacks'

  # on va créer une méthode à part s'appelant 'compute_damage' :
  def compute_damage
    return rand(1..6)
  end




end # fin de la classe 'Player'
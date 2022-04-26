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
  def gets_damage(dmg_input)
    @life_points = life_points - dmg_input
    puts "#{name} a perdu #{dmg_input} PV suite à cette attaque !"
  end # fin de la méthode 'gets_damage(dmg_input)







end # fin de la classe 'Player'
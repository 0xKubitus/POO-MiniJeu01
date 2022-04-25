class Player 

  #Un joueur possède 2 attributs : un nom @name (string) et un niveau de vie @life_points (integer):
  attr_accessor :name, :life_points


  #Quand on veut créer un objet Player, on ne met que son nom en entrée
  #(car le niveau de vie est le même pour tout le monde au début => 10 pts de vie).
  def initialize(name)
    @name = name
    @life_points = 10
  end # fin de la méthode 'initialize(name)'


  #Code une méthode show_state qui va afficher l'état de l'objet 'Player'
  #sur laquelle elle est exécutée : "XXXX a YYY points de vie".
  def show_state
    puts "#{name} possède #{life_points} PV."
  end # fin de la méthode 'show_state'











end # fin de la classe 'Player'
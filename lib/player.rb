class Player 

  #Un joueur possède 2 attributs : un nom @name (string) et un niveau de vie @life_points (integer):
  attr_accessor :name, :life_points


  #Quand on veut créer un objet Player, on ne met que son nom en entrée
  #(car le niveau de vie est le même pour tout le monde au début => 10 pts de vie).
  def initialize(name)
    @name = name
    @life_points = 10
  end # fin de la méthode 'initialize(name)'

end # fin de la classe 'Player'
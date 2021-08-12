class Player
  DEFAULT_HP = 100
  attr_reader :hit_points, :name

  def initialize(name, hit_points = DEFAULT_HP)
    @name = name
    @hit_points = hit_points
  end 

  def receive_damage
    @hit_points -= 10
  end

  def attack(player)
    player.receive_damage
  end

end
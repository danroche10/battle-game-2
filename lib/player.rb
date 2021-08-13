class Player
  DEFAULT_HP = 100
  attr_reader :hit_points, :name

  def initialize(name, hit_points = DEFAULT_HP)
    @name = name
    @hit_points = hit_points
  end 

  def receive_damage(amount)
    @hit_points -= amount
  end
end
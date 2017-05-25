class Player

  attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = 100
  end

  def damage(amount)
    @hit_points -= amount
  end
  
end

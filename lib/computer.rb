class Computer
  DEFAULT_HIT_POINTS = 100

  attr_reader :name, :hit_points

  def initialize(name = 'Computer', hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

end

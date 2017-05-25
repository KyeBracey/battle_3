require_relative 'player'

class Game
  DEFAULT_DAMAGE = 10
  attr_reader :player_one, :player_two

  def initialize(player_one = Player.new, player_two = Player.new)
    @player_one = player_one
    @player_two = player_two
  end

  def attack(target)
    target.receive_damage(DEFAULT_DAMAGE)
  end

end

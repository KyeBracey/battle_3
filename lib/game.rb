require 'player'

class Game
  DEFAULT_DAMAGE = 10
  attr_reader :player_1, :player_2

  def initialize(player_1 = Player.new, player_2 = Player.new)
    @player_1 = player_1
    @player_2 = player_2
  end

  def attack(target)
    target.receive_damage(DEFAULT_DAMAGE)
  end

end

require_relative 'player'

class Game
  DEFAULT_DAMAGE = 10
  attr_reader :player_one, :player_two

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @players = [@player_one, @player_two]
  end

  def self.create(player_one, player_two)
    @game = self.new(player_one, player_two)
  end

  def self.instance
    @game
  end

  def attack
    @players[0].receive_damage(rand(3..9))
  end

  def change_current_turn
    @players.rotate!
  end

  def attacker
    @players[1]
  end

  def defender
    @players[0]
  end

  def game_over?
    losing_players.any?
  end

  private

  def losing_players
    @players.select{ |player| player.hit_points <= 0 }
  end

end

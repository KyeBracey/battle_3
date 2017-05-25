require 'game'


describe Game do
  player_one = Player.new("Kavita")
  player_two = Player.new("Simon")
  subject(:game) {described_class.new(player_one, player_two)}


  it 'players can attack another player' do
    expect{ game.attack(player_two)}.to change { game.player_two.hit_points }.by(-10)
  end


end

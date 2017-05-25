require 'game'


describe Game do
  player_1 = Player.new("Kavita")
  player_2 = Player.new("Simon")
  subject(:game) {described_class.new(player_1, player_2)}


  it 'players can attack another player' do
    expect{ game.attack(player_2)}.to change { game.player_2.hit_points }.by(-10)
  end


end

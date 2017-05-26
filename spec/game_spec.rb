require 'game'


describe Game do
  player_one = Player.new("Kye")
  player_two = Player.new("Simon")
  subject(:game) {described_class.new(player_one, player_two)}


  it 'players can attack another player' do
    expect{ game.attack }.to change { game.defender.hit_points }.by(-10)
  end

  it 'changes the current attacker' do
    expect(game.attacker).to eq(player_two)
    game.change_current_turn
    expect(game.attacker).to eq(player_one)
  end

end

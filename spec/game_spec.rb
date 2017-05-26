require 'game'


describe Game do
  player_one = Player.new("Kye")
  player_two = Player.new("Simon")
  subject(:game) {described_class.new(player_one, player_two)}


  it 'players can attack another player' do
    expect{ game.attack(player_two)}.to change { game.player_two.hit_points }.by(-10)
  end

  it 'defaults current turn to player one at the beginning' do
    expect(game.current_turn).to eq(player_one)
  end

  it 'switches turn after an attack' do
    game.attack(player_two)
    expect(game.current_turn).to eq(player_two)
  end


end

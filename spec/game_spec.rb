require 'game'


describe Game do
  let(:player_one) { double(:player, name: "Kye", hit_points: 100)}
  let(:player_two) { double(:player, name: "Simon", hit_points: 100)}
  let(:losing_player) { double(:player, name: "Krillin", hit_points: 0)}
  subject(:game) {described_class.new(player_one, player_two)}
  subject(:game_with_losing_player) {described_class.new(player_one, losing_player)}

  it 'players can attack another player' do
    expect( game.defender ).to receive (:receive_damage)
    game.attack
  end

  it 'changes the current attacker' do
    expect(game.attacker).to eq(player_two)
    game.change_current_turn
    expect(game.attacker).to eq(player_one)
  end

  it 'Returns true if the game is over' do
    expect(game_with_losing_player.game_over?).to eq true
  end

  describe '#attack' do

    before do
        srand(1337)
    end

    it 'Deals between 3 and 9 damage' do
      expect(player_one).to receive(:receive_damage).with(7)
      expect(player_one).to receive(:receive_damage).with(3)
      expect(player_one).to receive(:receive_damage).with(8)
      game.attack
      game.attack
      game.attack
    end
  end

end

require 'player'

describe Player do
  subject(:player1) {described_class.new('Simon')}
  subject(:player2) {described_class.new('Kye')}
  subject(:player_with_50hp) {described_class.new('Krillin', 50)}

  it 'players have a name' do
    expect(player1.name).to eq 'Simon'
  end

  it 'players have 100 hit points by default' do
    expect(player1.hit_points).to eq Player::DEFAULT_HIT_POINTS
  end

  it 'players can override the default hit points and choose their own starting value' do
    expect(player_with_50hp.hit_points).to eq(50)
  end

  describe '#receive_damage' do
    it 'players lose 10 hit points when no argument is passed in' do
      expect{ player1.receive_damage }.to change { player1.hit_points }.by(-10)
    end

    it 'players can lose hit points based on the argument passed in' do
      expect{ player1.receive_damage(7) }.to change { player1.hit_points }.by(-7)
    end
  end
end

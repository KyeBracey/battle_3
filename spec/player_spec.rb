require './player'

describe Player do
  subject(:player1) {described_class.new('Simon')}
  subject(:player2) {described_class.new('Kavita')}

  it 'players have a name' do
    expect(player1.name).to eq 'Simon'
  end

  it 'players have hit points' do
    expect(player1.hit_points).to eq Player::DEFAULT_HIT_POINTS
  end

  it 'players can lose hit points' do
    expect{ player1.receive_damage }.to change { player1.hit_points }.by(-10)
  end

  # it 'players can attack another player' do
  #   expect{ player1.attack(player2) }.to change { player2.hit_points }.by(-10)
  # end
  #
  # it 'players can lose hit points when attacked' do
  #   expect{ player1.receive_damage }.to change { player1.hit_points }.by(-10)
  # end

end

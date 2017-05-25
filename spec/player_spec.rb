require 'player'

describe Player do
  subject(:player) {described_class.new('Simon')}

  it 'players have hit points' do
    expect(player.hit_points).to eq 100
  end

  it 'players can lose hit points when attacked' do
    player.damage(10)
    expect(player.hit_points).to eq 90
  end

end

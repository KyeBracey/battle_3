require 'computer'

describe Computer do
  subject(:computer) { described_class.new }
  subject(:named_computer) { described_class.new('Cell', 80) }

  describe '#name' do
    it 'Has a default name of "Computer"' do
      expect(computer.name).to eq('Computer')
    end

    it 'Can be passed a name of the players choice' do
      expect(named_computer.name).to eq('Cell')
    end
  end

  describe '#hit_points' do
    it 'Has 100 hit points by default' do
      expect(computer.hit_points).to eq (Computer::DEFAULT_HIT_POINTS)
    end

    it 'Can be passed an argument upon initialization to override the default hit points' do
      expect(named_computer.hit_points).to eq 80
    end
  end

  describe '#receive_damage' do
    it 'Computer loses 10 hit points when no argument is passed in' do
      expect{ computer.receive_damage }.to change { computer.hit_points }.by(-10)
    end

    it 'Computer can lose hit points based on the argument passed in' do
      expect{ computer.receive_damage(7) }.to change { computer.hit_points }.by(-7)
    end
  end
end

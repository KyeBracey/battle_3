require 'computer'

describe Computer do
  subject(:computer) { described_class.new }
  subject(:named_computer) { described_class.new('Cell') }

  describe '#name' do
    it 'has a default name of "Computer"' do
      expect(computer.name).to eq('Computer')
    end

    it 'can be passed a name of the players choice' do
      expect(named_computer.name).to eq('Cell')
    end
  end
end

require 'player'

describe Player do
  subject(:obi) { described_class.new("Obi") }
  it { is_expected.to respond_to :name }
  describe '#name' do
    it 'returns the player name' do
      expect(subject.name).to include("Obi")
    end
  end
  describe '#is_attacked' do
    it 'reduces hit points by 10' do
      expect { subject.is_attacked }.to change { subject.hp }.by(-10)
    end
  end
end

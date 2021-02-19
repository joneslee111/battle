require 'game'

describe Game do
  let(:player1) { double(:player) }
  let(:player2) { double(:player) }
  subject(:game) { described_class.new(player1, player2) }

  it 'should have stored array of players' do
    expect(game.players.first).to eq player1
    expect(game.players.last).to eq player2
  end


  describe '#attack' do
    it 'should send is_attacked method to player' do
      expect(player2).to receive(:is_attacked)
      game.attack(player2)
    end
  end
end

require 'game'

describe Game do

  let(:player1) { double(name: "player1") }
  let(:player2) { double(name: "player2") }
  let(:game) { described_class.new( player_class1: player1, player_class2: player2) }

  describe '#attack' do
    it 'player1 attacks player2 damages the player' do
      expect(player2).to receive(:receive_damage).with(Game::DEFAULT_ATTACK)
      game.attack(player2)
    end
  end

end
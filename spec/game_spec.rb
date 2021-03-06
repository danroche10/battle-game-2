require 'game'

describe Game do

  let(:player1) { double(name: "player1") }
  let(:player2) { double(name: "player2") }
  let(:game) { described_class.new( player_class1: player1, player_class2: player2) }
  before { }

  describe '#initialize' do
    it 'initializes class with player instances' do
      expect(game.player_1).to eq player1
    end

    it 'initializes with the starting player as player1' do
      expect(game.starting_player).to eq player1
    end

    it 'initializes with whos_turn instance as player1' do
      expect(game.whos_turn).to eq game.starting_player
    end

  end
  
  describe '#attack' do
    it 'player1 attacks player2 damages the player' do
      expect(player2).to receive(:receive_damage).with(Game::DEFAULT_ATTACK)
      game.attack(player2)
    end

    it 'player1 attacks player2 and calls the change_turn methid' do
      allow(player2).to receive(:receive_damage)
      expect(game).to receive(:change_turn).with(player2)
      game.attack(player2)
    end
  end

  describe "#victim" do
    it "should say player 2 is the victim to start" do
      expect(game.victim).to eq(game.player_2)
    end

    it "should say change victims after attack" do
      allow(player2).to receive(:receive_damage)
      game.attack(player2)
      expect(game.victim).to eq(game.player_1)
    end
  end

  describe "#change_turn" do
    it "should say who's turn it is" do
      expect(game.change_turn(player1)).to eq(game.player_1)
    end
  end

end
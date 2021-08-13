require 'player'

describe Player do
  let(:player1) { (described_class.new("Dan"))}
  let(:player2) { (described_class.new("Hotu"))}

  describe '#initialize' do
    it "initializes with name Dan" do
      expect(player1.name).to eq "Dan"
    end

    it 'initializes the hits as 100' do
      expect(player1.hit_points).to eq Player::DEFAULT_HP
    end
  end

  describe '#receive_damage' do
    it 'takes hit points away from player' do
      expect{ player1.receive_damage(10) }.to change{ player1.hit_points }.by (-10)
    end
  end
end
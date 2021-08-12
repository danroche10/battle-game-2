require 'player'

describe Player do

  let(:player1) { (described_class.new("Dan"))}
  let(:player2) { (described_class.new("Hotu"))}

  describe "#name" do

    it "returns name" do
      expect(player1.name).to eq "Dan"
    end

  end

  describe '#receive_damage' do

    it 'takes hit points away from player' do
      expect{ player1.receive_damage }.to change{ player1.hit_points }.by (-10)
    end

  end

  describe '#attack' do

    it 'is expected to attack player' do
      expect{ player1.attack(player2) }.to change{ player2.hit_points }.by (-10)
    end

  end

end
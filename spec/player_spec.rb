require 'player'

describe Player do

  let(:player) { (described_class.new("Dan"))}
  describe "#name" do
    it "returns name" do
      expect(player.name).to eq "Dan"
    end
  end
end
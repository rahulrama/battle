require 'player'

describe Player do

  subject(:dave) { described_class.new("Dave") }
  subject(:mittens) { described_class.new("Mittens") }

  describe "#initialize" do
    it 'returns the name of the player' do
      expect(dave.name).to eq "Dave"
    end
    it 'has a default hit points level' do
      expect(dave.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe "#reduce" do
    it 'reduces the hit points by the default attack value' do
      av = described_class::DEFAULT_ATTACK_VAL
      expect { mittens.reduce }.to change { mittens.hit_points }.by(-av)
    end
  end

end

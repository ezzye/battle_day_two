require 'player'

describe Player do
  subject(:player){ Player.new(:playername) }

  context '#name' do
    it 'returns the player\'s name' do
      expect(player.name).to eq :playername
    end
  end
  context '#hit_points' do
    it 'returns players hit points' do
      expect(player.hit_points).to eq 100
    end
  end
  context '#attacked' do
    it 'reduces hit points by 20' do
      player.attacked
      expect(player.hit_points).to eq 80
    end
  end
end

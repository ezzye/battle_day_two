require 'player'

describe Player do
  subject(:player){ Player.new(:player_name) }
  let(:player2){ Player.new(:player2_name) }

  context '#name' do
    it 'returns the player\'s name' do
      expect(player.name).to eq :player_name
    end
  end
  context '#hit_points' do
    it 'returns players hit points' do
      expect(player.hit_points).to eq 100
    end
  end
  context '#reduce_hp' do
    it 'reduces player\'s hit points by 20' do
      player.reduce_hp
      expect(player.hit_points).to eq 80
    end
  end
end

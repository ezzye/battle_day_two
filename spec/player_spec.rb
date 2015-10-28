require 'player'

describe Player do
  subject(:player){ Player.new(:playername) }

  context '#name' do
    it 'returns the player\'s name' do
      expect(player.name).to eq :playername
    end
  end
end

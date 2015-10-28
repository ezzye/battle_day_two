require 'game.rb'

describe Game do
  subject(:game) { Game.new(player1, player2) }
  let(:player1) { double(:player1, :reduce_hp => nil) }
  let(:player2) { double(:player2) }

  context '#initialize' do
    it 'creates two Player instances' do
      expect(game.players).to eq [player1, player2]
    end
  end
  context '#attack' do
    it 'calls #reduce_hp on the Player' do
      expect(game.player1).to receive(:reduce_hp)
      game.attack(game.player1)
    end
  end
end

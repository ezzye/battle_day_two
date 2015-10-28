require 'game.rb'

describe Game do
  subject(:game) {Game.new }
  let(:player1) {double(:player1, :reduce_hp => nil)}
  let(:player2) {double(:player2)}

  context 'when player actacks another player'
    it '#attack' do
      expect(player1).to receive(:reduce_hp)
      game.attack(player1)
    end
end
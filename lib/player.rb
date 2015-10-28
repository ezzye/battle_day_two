class Player
  attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = 100
  end

  def attack(player)
    player.reduce_hp
  end

  def reduce_hp
    self.hit_points = self.hit_points - 20
  end

  private

  attr_writer :hit_points

end

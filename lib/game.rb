class Game
  attr_reader :players

  def initialize(p1, p2)
    @players = [p1, p2]
  end

  def attack(player)
    player.is_attacked
  end
end

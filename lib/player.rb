class Player
  attr_reader :hp

  def initialize(name)
    @name = name
    @hp = 100
  end

  def name
    @name
  end

  def is_attacked
    @hp -= 10
  end
end

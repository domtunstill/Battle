class Player

  PLAYER_HP = 100

  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = PLAYER_HP
  end

  def attacked(damage)
    @hp -= damage
  end

end

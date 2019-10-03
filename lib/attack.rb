
class Attack

  def initialize
    @move = {"Punch!" => rand(5..20), "Kick!" => rand(10..35), "Special!" => rand(25..70)}
    @move_chance = {"Punch!" => 1, "Kick!" => rand(2), "Special!" => rand(3)}
  end

  def damage(move)
    if @move_chance[move] == 1
      @damage = @move[move]
    else @damage = 0
    end
  end

  def attack(player, move)
    damage(move)
    player.attacked(@damage)
    # @action_text = "#{@players.first.name} turn to beat up #{@players.last.name}"
  end

end

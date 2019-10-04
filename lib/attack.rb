
class Attack

  attr_reader :damage

  def initialize
    @move = {"Punch!" => rand(5..15), "Kick!" => rand(15..40), "Special!" => rand(40..80)}
    @move_chance = {"Punch!" => 1, "Kick!" => rand(2), "Special!" => rand(3)}
    @damage = 0
  end

  def attack(players, move)
    calc_damage(move)
    players.last.attacked(@damage)
  end

  private

    def calc_damage(move)
      if @move_chance[move] == 1
        @damage = @move[move]
      end
    end

end

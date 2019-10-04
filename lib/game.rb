require_relative 'player'
require_relative 'attack'

class Game

  attr_reader :player_1, :player_2, :players, :action_text, :move_text

  def self.instance
    @game
  end

  def self.create(player_1,player_2)
    @game = Game.new(player_1, player_2)
  end

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @players = [@player_1, @player_2].shuffle!
    @action_text = "#{@players.first.name}'s turn to beat up #{@players.last.name}"
  end

  def last_action(move, damage)
    @move_text = "#{@players.first.name} used #{move} and dealt #{damage} damage on #{@players.last.name}!"
  end

  def switch_turn
    @players.reverse!
    @action_text = "#{@players.first.name}'s turn to beat up #{@players.last.name}"
  end

  def game_over?
    true if @player_1.hp <= 0 || @player_2.hp <= 0
  end

end

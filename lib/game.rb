require_relative 'player'

class Game

  attr_reader :player_1, :player_2, :whos_turn, :starting_player, :stored_game

  DEFAULT_ATTACK = 10

  def initialize( player_class1:, player_class2: )
    @player_1 = player_class1
    @player_2 = player_class2
    @starting_player = @player_1
    @whos_turn = @starting_player
    @stored_game
  end

  def self.game(player_1, player_2)
    @stored_game = Game.new( player_class1: player_1, player_class2: player_2 )
  end

  def self.game_instance
    @stored_game
  end

  def attack(victim)
    victim.receive_damage(DEFAULT_ATTACK)
    change_turn(victim)
  end

  def victim
    whos_turn == @player_1 ? @player_2 : @player_1
  end

  def change_turn(player)
    @whos_turn = player
  end
end

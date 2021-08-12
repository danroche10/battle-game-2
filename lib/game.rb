require_relative 'player'

class Game

  attr_reader :player_1, :player_2

  def initialize( player_class1:, player_class2: )
    @player_1 = player_class1
    @player_2 = player_class2
  end

  def attack(player)
    player.receive_damage
  end
end

# player1 = Player.new("Hotu")
# player2 = Player.new("Dan")
# my_game = Game.new( player_class1: player1, player_class2: player2 )
# my_game.attack(player2)
# puts player2.hit_points
# my_game.attack(player1)
# puts player1.hit_points

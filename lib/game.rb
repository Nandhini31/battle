class Game
  attr_reader :player_1, :player_2

  def initialize(player_1,player_2)
    @players = [player_1, player_2]
    @player_1 = @players[0]
    @player_2 = @players[1]
  end

  def attack(player)
    player.hurt
  end

  def attacking_player
    @players.first
  end

  def attacked_player
    @players.last
  end

  def switch_players
    @players.rotate!
  end
end

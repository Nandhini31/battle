class Game
  attr_reader :player_1, :player_2

  def initialize(player_1,player_2)
    @player_1 = player_1
    @player_2 = player_2
    @players = [@player_1, @player_2]
  end

  def attack(player)
    player.hurt
  end

  def active_player_name
    @players.first.name
  end

  def switch_players
    @players.rotate!
  end
end

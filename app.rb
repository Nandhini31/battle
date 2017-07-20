require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1,player_2)
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name
    @player_1_HP = $game.player_1.hp
    @player_2_HP = $game.player_2.hp
    @active_player_name = $game.attacking_player.name
    erb :play
  end

  post '/attack' do
    @attacker = $game.attacking_player
    @attacked = $game.attacked_player
    $game.attack(@attacked)
    $game.switch_players
    erb :attack
  end

  run! if app_file == $0
end

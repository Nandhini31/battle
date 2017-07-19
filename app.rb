require 'sinatra/base'
require './lib/player.rb'


class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_1_HP = $player_1.hp
    @player_2_HP = $player_2.hp
    p @player_1_HP
    p @player_2_HP
    erb :play
  end

  post '/attack' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    $player_2.hurt
    erb :attack
  end

  run! if app_file == $0
end

require './lib/player'
require 'sinatra/base'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_one = Player.new(params[:player_one_name])
    player_two = Player.new(params[:player_two_name])
    $game = Game.new(player_one, player_two)
    redirect '/play'
  end

  get '/play' do
    redirect '/result' if $game.game_over?
    $game.change_current_turn
    erb :player_names
  end

  post '/update_status' do
    $game.attack
    redirect '/attack'
  end

  get '/attack' do
    erb(:attack)
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $0
end

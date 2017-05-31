require './lib/player'
require 'sinatra/base'
require './lib/game'
require './lib/computer'

class Battle < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  get '/name_entry_1_player' do
    erb(:name_entry_1_player)
  end

  post '/names_1p' do
    player_one = Player.new(params[:player_one_name])
    player_two = Computer.new
    @game = Game.create(player_one, player_two)
    p @game
    redirect '/play_1p'
  end

  get '/play_1p' do
    redirect '/result' if @game.game_over?
    @game.change_current_turn
    erb :play_1p
  end

  post '/update_status_1p' do
    @game.attack
    redirect '/attack_1p'
  end

  get '/attack_1p' do
    erb(:attack_1p)
  end

  get '/computer_turn' do
    redirect '/result' if @game.game_over?
    @game.change_current_turn
    @game.attack
    erb(:computer_attack)
  end

  get '/name_entry_2_players' do
    erb(:name_entry_2_players)
  end

  post '/names' do
    player_one = Player.new(params[:player_one_name])
    player_two = Player.new(params[:player_two_name])
    @game = Game.create(player_one, player_two)
    redirect '/play'
  end

  get '/play' do
    redirect '/result' if @game.game_over?
    @game.change_current_turn
    erb :play
  end

  post '/update_status' do
    @game.attack
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

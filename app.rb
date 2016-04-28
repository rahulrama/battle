require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  
  before do
    @game = Game.game
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.start_game(player_1,player_2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    @game.attack(@game.current_opponent)
    erb :attack
  end

  post '/switch-turns' do
    @game.switch_turn
    redirect '/play'
  end

  # # start the server if ruby file executed directly
  run! if app_file == $0
end

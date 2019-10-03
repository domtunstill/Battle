# app.rb
require 'sinatra/base'
require_relative './lib/game'

class Battle < Sinatra::Base
  # ... app code here ...

enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    if @game.game_over?
      redirect '/game_over'
    end
    erb(:play)
  end

  post '/attack' do
    Attack.new.attack(@game.players.last, (params.values[0]))
    if @game.game_over?
      redirect '/game_over'
    else
      @game.switch_turn
      redirect '/play'
    end
  end

  get '/game_over' do
    unless @game.game_over?
      redirect '/play'
    end
    erb(:game_over)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end

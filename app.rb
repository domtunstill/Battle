# app.rb
require 'sinatra/base'
require_relative './lib/game'

class Battle < Sinatra::Base
  # ... app code here ...

enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    session[:header] = "#{$game.player_1.name} to start beating up #{$game.player_2.name}"
    redirect '/play'
  end

  get '/play' do
    @player_1 = $game.player_1.name
    @player_2 = $game.player_2.name
    @player_1_HP = $game.player_1.hp
    @player_2_HP = $game.player_2.hp
    @header = session[:header]
    erb(:play)
  end

  get '/attack' do
    # players = [$player_1, $player_2]
    $game.attack($game.player_2)
    session[:header] = "#{$game.player_1.name} attacks #{$game.player_2.name}"
    redirect '/play'
  end
  # start the server if ruby file executed directly
  run! if app_file == $0

end

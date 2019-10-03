# app.rb
require 'sinatra/base'
require_relative './lib/player'

class Battle < Sinatra::Base
  # ... app code here ...

enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    session[:header] = "#{$player_1.name} to start beating up #{$player_2.name}"
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    @player_1_HP = $player_1.hp
    @player_2_HP = $player_2.hp
    @header = session[:header]
    erb(:play)
  end

  get '/attack_player2' do
    $player_2.attacked
    session[:header] = "#{$player_1.name} attacks #{$player_2.name}"
    redirect '/play'
  end
  # start the server if ruby file executed directly
  run! if app_file == $0

end

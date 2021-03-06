require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base

  enable :sessions


  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player1_name])
    player2 = Player.new(params[:player2_name])
    $game = Game.new player1,player2
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    $game.attack($game.player2)
    @game = $game
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

  private

  attr_reader :game
end

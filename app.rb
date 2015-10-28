require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base

  enable :sessions


  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player1_name])
    $player2 = Player.new(params[:player2_name])
    $game = Game.new
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1
    @player2 = $player2
    erb :play
  end

  get '/attack' do
    $game.attack($player2)
    @player1 = $player1
    @player2 = $player2
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

  private

  attr_reader :game
end

require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player1] = params[:Player_one]
    session[:player2] = params[:Player_two]
    redirect '/play'
  end

  get '/play' do
    @Player_one = session[:player1]
    @Player_two = session[:player2]
    erb :play
  end

  get '/attack' do
    @Player_one = session[:player1]
    @Player_two = session[:player2]
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

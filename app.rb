require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    @Player_one = params[:Player_one]
    @Player_two = params[:Player_two]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
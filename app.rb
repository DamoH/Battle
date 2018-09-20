require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:uno] = params[:player_one]
    session[:deux] = params[:player_two]
    redirect '/play'
  end

  get '/play' do
    @player_one = session[:uno]
    @player_two = session[:deux]
    erb(:play)
  end

  get '/attack' do
    @player_one = session[:uno]
    @player_two = session[:deux]
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end

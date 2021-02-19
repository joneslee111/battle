require 'sinatra/base'
require 'player'
require 'game'

class Battle < Sinatra::Base
enable :sessions

  get '/' do
      erb :index
  end

  post '/names' do
      $p1 = Player.new(params[:p1_name])   # session allows it to exist for length of session
      $p2 = Player.new(params[:p2_name])  # params exist in length of request and available in /names
      $game = Game.new($p1, $p2)
      redirect to('/play')                  #
  end

  get '/play' do
    @p1_name = $game.players.first.name
    @p2_name = $game.players.last.name
    erb :play
  end

  get '/attack' do
    @p1_name = $game.players.first.name
    @p2_name = $game.players.last.name
    $game.attack($game.players.last)
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

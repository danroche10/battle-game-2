require 'sinatra'
require "sinatra/reloader" if development?
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class Battle < Sinatra::Base

  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new( player_class1: player_1, player_class2: player_2 )
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    victim = @game.victim
    @game.attack(victim)
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end


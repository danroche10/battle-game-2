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
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect '/play'
  end

  get '/play' do
    p $player_1
    @player_1 = $player_1
    @player_2 = $player_2
    erb(:play)
  end

  get '/attack' do
    @player_1 = $player_1
    @player_2 = $player_2
    Game.new( player_class1: @player_1, player_class2: @player_2 ).attack(@player_2)
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end


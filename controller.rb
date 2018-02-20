require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/game.rb')

get '/game/:hand1/:hand2' do
  game = Game.new(params[:hand1], params[:hand2])
  @result = game.run
  erb(:result)
end

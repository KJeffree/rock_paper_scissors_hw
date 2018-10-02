require('sinatra')
require('sinatra/contrib/all')
require('pry')

require_relative('./models/game.rb')
also_reload('./models/*')

get '/play/:player1/:player2' do
  player1 = params[:player1]
  player2 = params[:player2]
  @winner = Game.run(player1, player2)
  erb(:result)
end

get '/' do
  erb(:home)
end

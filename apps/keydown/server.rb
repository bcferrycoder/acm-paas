require 'sinatra'
require 'sinatra'

set :bind => "0.0.0.0"
set :port => ENV["PORT"]

get '/' do
  erb :decks
end

get '/refresh' do
end

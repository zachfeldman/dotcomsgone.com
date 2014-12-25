require 'sinatra'
require 'haml'
require 'sass'
require 'compass'

require './sass-config'

get '/' do
  haml :home
end

get '/about' do
  haml :about
end
require 'sinatra'
require 'haml'
require 'sass'
require 'compass'

require './sass-config'

stories = Marshal.load(File.open("content.txt", "r"))

get '/' do
  id = stories.to_a[(rand*stories.count).ceil][0]
  redirect "/#{id}"
end

get '/:id' do
  p params[:id]
  @story = stories[params[:id]]
  haml :story
end
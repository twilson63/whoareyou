$:.unshift File.join(File.expand_path(File.dirname(__FILE__)), 'lib')

require 'sinatra'
require 'haml'
require 'whoru'

get '/' do
  haml :index
end

post '/screen' do
  @screen_name = params[:sn]
  @categories = Whoru::Algorithm.new(@screen_name).categories
  haml :index
end

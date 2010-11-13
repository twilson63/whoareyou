$:.unshift File.join(File.expand_path(File.dirname(__FILE__)), 'lib')

require 'sinatra'
require 'haml'
require 'sass'
require 'rdiscount'
require 'whoareyou'

get '/' do
  haml :index
end

get '/about' do
  haml :about
end


post '/' do
  @screen_name = params[:sn]
  @categories = Whoareyou::Algorithm.new(@screen_name).categories
  haml :index
end

get '/app.css' do
  scss :app
end


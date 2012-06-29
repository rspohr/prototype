require 'sinatra'
require 'slim'
require 'sass'

get '/' do
  slim :index
end

get '/scooby' do
  slim :scooby
end

get '/styles.css' do
  sass :styles
end

require 'bundler/setup'
require 'sinatra'

set :port, 5500

get '/' do
    erb :index
end

get '/llama' do
    '<h1> Be Happy! </h1>
    <img src=\'https://4.bp.blogspot.com/-OxdWwnS5WJ4/T65c_Z1hflI/AAAAAAAANL0/MzkD35Cms7k/s400/dalai-lama-laughs.jpeg\' alt=\'Dalai Lama pointing his fingers up as if they were animal ears\'/>'
end

get '/govdesign' do
    erb :govdesign
end

require 'bundler/setup'
require 'sinatra'

set :port, 5500
get '/' do
    '<h1>Hello world</h1>'
end

get '/llama' do
    '<img src=\'https://image.spreadshirtmedia.net/image-server/v1/mp/compositions/T1040A14PA2641PT26X35Y0D157252736FS1885/views/1,width=378,height=378,appearanceId=14,backgroundColor=000000,noPt=true/no-drama-llama-lama-geschenkidee-spruch-trucker-cap.jpg\'/>'
end

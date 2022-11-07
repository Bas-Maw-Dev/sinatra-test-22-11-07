ENV['APP_ENV'] = 'test'

require './sinatra'
require 'bundler/setup'
require 'rspec'
require 'rack/test'

RSpec.configure do |conf|
    conf.include Rack::Test::Methods
end

RSpec.describe 'Hello Llama App' do
    include Rack::Test::Methods
  
    def app
      Sinatra::Application
    end
  
    it "says hello" do
        get '/'
        expect(last_response).to be_ok
        expect(last_response.body).to include('<h1>Hello world</h1>')
    end

    it "displays image" do
        get '/llama'
        expect(last_response).to be_ok
        expect(last_response.body).to eq('<img src=\'https://image.spreadshirtmedia.net/image-server/v1/mp/compositions/T1040A14PA2641PT26X35Y0D157252736FS1885/views/1,width=378,height=378,appearanceId=14,backgroundColor=000000,noPt=true/no-drama-llama-lama-geschenkidee-spruch-trucker-cap.jpg\'/>')
    end
end

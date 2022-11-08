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
        expect(last_response.body).to include('<h1>Welcome to the Llama pages</h1>')
    end

    it "displays image" do
        get '/llama'
        expect(last_response).to be_ok
        expect(last_response.body).to eq('<img src=\'https://4.bp.blogspot.com/-OxdWwnS5WJ4/T65c_Z1hflI/AAAAAAAANL0/MzkD35Cms7k/s400/dalai-lama-laughs.jpeg\'/>')
    end
end

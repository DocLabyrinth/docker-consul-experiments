require 'bundler/setup'
require 'sinatra'
require 'yaml'

class App < Sinatra::Base
  get '/' do
    "<pre>#{request.env.to_yaml}</pre>"
  end

  get '/health' do
    status 200
  end
end

require 'rubygems'
require 'sinatra'
require 'sinatra/base'
require 'json'
require './services/inreach_service'

class LocalAuthorities < Sinatra::Base

  get '/' do
    "HIFU Inreach Intergrations"
  end

  get '/latestlocation' do
    latest_location = InreachService.new.latest_location(request.params)
    # TODO: check and report for stale location 
    # TODO: response format
  end

end
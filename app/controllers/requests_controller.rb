require_relative './application_controller'

class Requests < ApplicationController

  get '/requests' do
    erb(:requests)
  end
end
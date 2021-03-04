require_relative './application_controller'

class RequestsController < ApplicationController

  get '/requests' do
    erb(:requests)
  end
end
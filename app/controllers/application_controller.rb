require 'sinatra/base'
require_relative '../models/spaces_model.rb'
  
class ApplicationController < Sinatra::Base

  enable :sessions
  
  configure do
    set :views, "app/views"
  end

end
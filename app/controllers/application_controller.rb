require 'sinatra/base'
require_relative '../models/spaces_model.rb'
  
class ApplicationController < Sinatra::Base
  require_relative '../models/user.rb'

  enable :sessions
  
  configure do
    set :views, "app/views"
  end

end
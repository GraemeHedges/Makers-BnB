require 'sinatra/base'

class ApplicationController < Sinatra::Base

  enable :sessions
  
  configure do
    set :views, "app/views"
  end

end
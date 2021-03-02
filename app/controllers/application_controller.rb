require 'sinatra/base'

class ApplicationController < Sinatra::Base
  
  configure do
    set :views, "app/views"
  end

end
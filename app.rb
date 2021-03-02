require 'sinatra/base'

class MakersBnG < Sinatra::Base
  require_relative './app/controllers/sign_up_controller.rb'

  get '/' do 
    erb(:index)
  end

  get '/sign-up' do
    erb(:sign_up)
  end

  run! if app_file == $0
end

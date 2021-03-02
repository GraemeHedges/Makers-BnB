require 'sinatra/base'

class MakersBnG < Sinatra::Base
  require_relative './app/controllers/sign_up_controller.rb'

  get '/' do 
    'Makers Air B\'n\'G'
  end

  run! if app_file == $0
end

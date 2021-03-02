require 'sinatra/base'

class MakersBnG < Sinatra::Base
  require_relative './app/controllers/sign_up_controller.rb'
  require_relative './app/controllers/application_controller.rb'
  require_relative './app/controllers/spaces_controller.rb'

  get '/' do 
    erb(:index)
  end

  use ApplicationController
  use SignUp
  use Spaces

  run! if app_file == $0
end

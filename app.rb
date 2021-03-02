require 'sinatra/base'

class MakersBnG < Sinatra::Base
  require_relative './app/controllers/sign_up_controller.rb'
  require_relative './app/controllers/sign_in_controller.rb'
  require_relative './app/controllers/sign_out_controller.rb'
  
  enable :sessions

  get '/' do 
    @username = session[:username]
    erb(:index)
  end

  use SignUp
  use SignIn
  use SignOut

  run! if app_file == $0
end

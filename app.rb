require 'sinatra/base'

class MakersBnG < Sinatra::Base
  require_relative './app/controllers/sign_up_controller.rb'

  get '/' do 
    erb(:index)
  end

  get '/sign-up' do
    erb(:sign_up)
  end

  get '/spaces' do
    erb(:spaces)
  end

  post '/spaces' do
    redirect '/spaces'
  end

  run! if app_file == $0
end

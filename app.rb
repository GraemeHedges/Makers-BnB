require 'sinatra/base'

class MakersBnG < Sinatra::Base
  require_relative './app/controllers/sign_up_controller.rb'
  enable :sessions

  get '/' do 
    @username = session[:username]
    erb(:index)
  end

  get '/sign-up' do
    erb(:sign_up)
  end

  post '/sign-up' do
    redirect './'
  end

  get '/sign-in' do
    erb(:sign_in)
  end

  post '/sign-in' do
    session[:username] = params[:username]
    redirect '/'
  end

  get '/sign-out' do
    session[:username] = nil
    redirect '/'
  end

  run! if app_file == $0
end

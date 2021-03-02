require 'sinatra/base'

class MakersBnG < Sinatra::Base
  require_relative './app/controllers/sign_up_controller.rb'
  enable :sessions

  get '/' do 
    @username = session[:username]
    erb(:index)
  end

  get '/sign_up' do
    erb(:sign_up)
  end

  post '/sign_up' do
    redirect './'
  end

  get '/sign_in' do
    erb(:sign_in)
  end

  post '/sign_in' do
    session[:username] = params[:username]
    redirect '/'
  end

  get '/sign_out' do
    session[:username] = nil
    redirect '/'
  end

  run! if app_file == $0
end

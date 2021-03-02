require 'sinatra/base'

class SignIn < Sinatra::Base

  get '/sign-in' do
    erb(:sign_in)
  end

  post '/sign-in' do
    session[:username] = params[:username]
    redirect '/'
  end

end
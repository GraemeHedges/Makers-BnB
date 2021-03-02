require 'sinatra/base'

class SignIn < Sinatra::Base

  configure do
    set :views, "app/views"
    set :public_dir, "public"
  end

  get '/sign-in' do
    erb(:sign_in)
  end

  post '/sign-in' do
    session[:username] = params[:username]
    redirect '/'
  end

end
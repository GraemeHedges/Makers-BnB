require 'sinatra/base'

class SignOut < Sinatra::Base

  configure do
    set :views, "app/views"
    set :public_dir, "public"
  end

  get '/sign-out' do
    session[:username] = nil
    redirect '/'
  end

end
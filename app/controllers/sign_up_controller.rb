require 'sinatra/base'

class SignUp < Sinatra::Base

  configure do
    set :views, "app/views"
    set :public_dir, "public"
  end

  get '/sign-up' do
    erb(:sign_up)
  end

end
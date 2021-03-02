require 'sinatra/base'

class SignOut < Sinatra::Base

  get '/sign-out' do
    session[:username] = nil
    redirect '/'
  end

end
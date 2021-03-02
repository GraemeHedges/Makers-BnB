require_relative './application_controller'

class SignUp < ApplicationController

  get '/sign-up' do
    erb(:sign_up)
  end
  
  post '/sign-up' do
    redirect '/'
  end

end
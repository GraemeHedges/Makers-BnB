require_relative '../models/user.rb'

class SignUp < ApplicationController

  get '/sign-up' do
    erb(:sign_up)
  end

  post '/sign-up' do
    User.create(params)
    redirect '/'
  end

end
require_relative './application_controller'

class SignUp < ApplicationController

  post '/sign-up' do
    redirect '/'
  end

end
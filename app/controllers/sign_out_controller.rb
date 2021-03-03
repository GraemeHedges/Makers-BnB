class SignOut < ApplicationController

  get '/sign-out' do
    session[:username] = nil
    redirect '/'
  end

end
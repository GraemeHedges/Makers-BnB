class SignOutController < ApplicationController

  get '/sign-out' do
    session[:user] = nil
    redirect '/'
  end

end
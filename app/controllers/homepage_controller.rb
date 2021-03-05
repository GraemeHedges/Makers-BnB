class HomePage < ApplicationController

  get '/' do 
    @user = session[:user]
    erb(:index)
  end

end
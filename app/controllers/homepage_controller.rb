class HomePageController < ApplicationController

  get '/' do 
    @username = session[:username]
    erb(:index)
  end

end
class SpacesController < ApplicationController

  get '/spaces' do
    @result = session[:result]
    erb(:spaces)
  end

  post '/spaces' do
    session[:result] = Spaces.search(params[:night])
    @result = session[:result]
    redirect '/spaces'
  end

end
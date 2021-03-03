class Spaces < ApplicationController

  get '/spaces' do
    erb(:spaces)
  end

  post '/spaces' do
    redirect '/spaces'
  end

end
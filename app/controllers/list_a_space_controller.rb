class ListASpaceController < ApplicationController
  get '/list-a-space' do
    erb(:list_a_space)
  end

  post '/list-a-space' do
    Spaces.create(params)
    redirect '/'
  end
end
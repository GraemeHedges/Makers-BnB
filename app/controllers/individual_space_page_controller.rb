class IndividualSpace < ApplicationController

  get '/individual-space' do
    erb(:individual_space_page)
  end

  post '/individual-space' do
    redirect '/individual-space'
  end
  
end
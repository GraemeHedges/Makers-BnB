require 'sinatra/base'

class MakersBnG < Sinatra::Base

  get '/' do 
    'Makers Air B\'n\'G'
  end

  run! if app_file == $0
end
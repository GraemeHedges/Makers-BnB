require 'sinatra/base'

class MakersBnG < Sinatra::Base
  require_relative './app/controllers/application_controller.rb'
  require_relative './app/controllers/sign_up_controller.rb'
  require_relative './app/controllers/sign_in_controller.rb'
  require_relative './app/controllers/sign_out_controller.rb'
  require_relative './app/controllers/spaces_controller.rb'
  require_relative './app/controllers/homepage_controller.rb'
  require_relative './app/controllers/list_a_space_controller.rb'
  require_relative './app/controllers/requests_controller.rb'
  require_relative './app/controllers/individual_space_page_controller.rb'


  
  use ApplicationController
  use SignUpController
  use SignInController
  use RequestsController
  use SignOutController
  use SpacesController
  use HomePageController
  use ListASpaceController
  use IndividualSpaceController



  run! if app_file == $0
end

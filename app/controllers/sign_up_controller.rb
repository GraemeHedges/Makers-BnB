class SignUp < ApplicationController

  get '/sign-up' do
    erb(:sign_up)
  end

  post '/sign-up' do
    if params[:password] === params[:confirm_password]
      User.create(params)
      redirect '/'
    else
      @password_error = "Passwords do not match"
      erb(:sign_up)
    end
  end

end
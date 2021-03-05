class SignInController < ApplicationController

  get '/sign-in' do
    erb(:sign_in)
  end

  post '/sign-in' do
    @user = User.authenticate(params)
    if @user
      session[:user] = @user
      redirect '/'
    else
      @login_error = "Username or password incorrect"
      erb(:sign_in)
    end
  end

end
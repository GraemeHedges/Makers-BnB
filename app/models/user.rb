require 'sinatra/activerecord'
require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt

  self.establish_connection(ENV['ENVIRONMENT'].to_sym)
  
  def self.create(params)
    user = User.new
    user.email = params[:email]
    user.name = params[:name]
    user.password = encrypt(params[:password])
    user.save!
  end

  def self.authenticate(params)
    user = User.find_by(email: params[:email])
    if user && Password.new(user.password) == params[:password]
      return user
    else
      return nil
    end
  end
  
  def self.encrypt(password)
    Password.create(password)
  end
end

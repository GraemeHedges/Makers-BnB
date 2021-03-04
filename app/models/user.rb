require 'sinatra/activerecord'

class User < ActiveRecord::Base
  attr_reader :name, :email
  def initialize(name:, email:, password:)
    @name = name
    @email = email
    @password = password
  end
end

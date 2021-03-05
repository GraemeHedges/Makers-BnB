require 'sinatra/activerecord'

class Spaces < ActiveRecord::Base

  # self.establish_connection(ENV['RACK_ENV'].to_sym)

  def self.create(params)
    space = Spaces.new
    space.name = params[:name]
    space.price = params[:price]
    space.description = params[:description]
    space.available_from = params[:from]
    space.available_to = params[:to]
    space.space_owner = params[:space_owner]
    space.save!
  end

  def self.delete(param)
    space = Spaces.find_by(name: param)
    space.destroy
  end

  def self.search(date)
    date = date
    space = Spaces.where('available_from < ? AND available_to > ?', date, date)
  end

end

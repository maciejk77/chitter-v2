require 'data_mapper'
require 'sinatra'

env = ENV['RACK_ENV'] || 'development'

DataMapper.setup(:default, "postgres://localhost/chitter_#{env}")

require './lib/peep'
require './lib/user'

DataMapper.finalize

DataMapper.auto_upgrade!


class Chitter < Sinatra::Base
  get '/' do
    erb :index
  end

  # get('/index') do
  #   erb :index
  # end

  get('/users/new') do
    erb :'users/new'
  end

  post('/users') do
    erb :'users/new'
    user = User.create(
    :name => params[:name],
    :email => params[:email],
    :password => params[:password],
    :confirmation => params[:confirmation] 
    )
 
  end  

end

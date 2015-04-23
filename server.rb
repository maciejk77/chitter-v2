require 'data_mapper'
require 'sinatra'

env = ENV['RACK_ENV'] || 'development'

DataMapper.setup(:default, "postgres://localhost/chitter_#{env}")

require './lib/peep'

DataMapper.finalize

DataMapper.auto_upgrade!

class Chitter < Sinatra::Base

  get '/' do
    erb :index
  end

  get('/index') do
    erb :index
  end

end

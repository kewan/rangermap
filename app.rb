require "sinatra"
require "sinatra/activerecord"
require "grape"

set :database, ENV['DATABASE_URL']

require "./models/point"
require "./api"

class Web < Sinatra::Base
  get '/' do
    "Hello world."
  end
end

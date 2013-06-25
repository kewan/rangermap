require "sinatra"
require "sinatra/activerecord"

set :database, "sqlite3:///dev.db"

require "./models/point"

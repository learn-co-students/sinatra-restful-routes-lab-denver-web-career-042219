ENV['SINATRA_ENV'] ||= "recipes"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/recipes.db"
)

require_all 'app'

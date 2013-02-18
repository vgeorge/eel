require 'rubygems'
require 'sinatra/base'
require 'data_mapper'

# require files
Dir.glob('./{helpers,controllers,models}/*.rb').each { |file| require file }

# enable database connection
DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/eel.db")

# map routes
map('/cidade') { run CityController } 
map('/') { run ApplicationController }
require 'rubygems'
require 'sinatra/base'
require 'data_mapper'

# require files
Dir.glob('./{helpers,controllers,models}/*.rb').each { |file| require file }

# enable database connection
DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/eel.db")

# map routes
map('/estados')       { run StateController } 
map('/cidades')       { run CityController } 
map('/distritos')     { run DistrictController } 
map('/subdistritos')  { run SubdistrictController } 
map('/') { run ApplicationController }
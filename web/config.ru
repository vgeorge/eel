# encoding: UTF-8

require 'rubygems'
require 'sinatra/base'
require 'data_mapper'

# require files
Dir.glob('./{helpers,controllers,models}/*.rb').each { |file| require file }

# enable logging for DataMapper
DataMapper::Logger.new('log/eel.log', :debug)

# enable database connection
DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/eel.db")

# Finalize to validate and initalize properties associated with relationships 
DataMapper.finalize

# 
# Some attributes imported from IBGE files contain characters that String#encode
# can't resolve, and these are dropped.
# 
p "Sanitizing encoding for streets..."
Street.all.each do |s|
  if not s.name.valid_encoding? then
    # s.name.encode!("utf-8", "utf-8", :invalid => :replace) don't work for some cases
    s.name = 'N/D'
    s.save
    p "Name for Street #{s.id} dropped."
  end

  if not s.type.valid_encoding? then
    s.type = 'N/D'
    s.save
    p "Type for Street #{s.id} dropped."
  end

  if not s.title.valid_encoding? then
    s.title = 'N/D'
    s.save
    p "Title for Street #{s.id} dropped."
  end
end


# Count cache
p "Updating count cache for cities"
City.all(:order => :name).each do |c|
  c.update(:streets_count => c.streets.size)
  c.save
end

# map routes
map('/estados')       { run StateController } 
map('/cidades')       { run CityController } 
map('/distritos')     { run DistrictController } 
map('/subdistritos')  { run SubdistrictController } 
map('/') { run ApplicationController }
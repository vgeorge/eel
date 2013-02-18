class City
  include DataMapper::Resource
  
  property :id,     Integer
  property :name,   String
end
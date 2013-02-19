class State
  include DataMapper::Resource
  
  property :id,     Serial
  property :abbreviation,   String
  property :name,   String
    
  has n, :cities
  
end
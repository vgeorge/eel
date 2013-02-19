class Bairro
  include DataMapper::Resource
  
  property :id,     Serial
  property :name,   String
  
  belongs_to :city
  
end
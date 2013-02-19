class Subdistrict
  include DataMapper::Resource
  
  property :id,     Serial
  property :name,   String
  
  belongs_to :district
  
end
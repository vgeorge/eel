class District
  include DataMapper::Resource
  
  property :id,     Serial
  property :name,   String
  
  belongs_to :city
  
  has n, :subdistricts
  
  def has_subdistricts?
    case subdistricts.count
    when 0 
      false
    when 1 
      if (subdistricts.count == 1) and (subdistricts.first.name == self.name) then
        false
      end
    else
      true
    end
  end
  
end
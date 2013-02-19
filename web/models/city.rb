class City
  include DataMapper::Resource
  
  property :id,           Serial
  property :name,         String
  
  belongs_to :state
  
  has n, :bairros
  has n, :districts
  
  def has_districts?
    case districts.count
    when 0 
      false
    when 1 
      if (districts.count == 1) and (districts.first.name == self.name) then
        false
      end
    else
      true
    end
  end

  def has_bairros?
    case bairros.count
    when 0 
      false
    when 1 
      if (bairros.count == 1) and (bairros.first.name == self.name) then
        false
      end
    else
      true
    end
  end

  
end
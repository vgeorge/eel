class Street
  include DataMapper::Resource
  
  property :id,     Serial
  property :type,   String
  property :title,  String  
  property :name,   String
  
  belongs_to :city
  
  def fullname
    if title then
      type + " " + title + " " + name
    else
      type + " " + name
    end
  end
  
end
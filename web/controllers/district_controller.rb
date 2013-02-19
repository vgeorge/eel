class DistrictController < ApplicationController 

  get '/:id' do |id|
    title "Distrito"
    @district = District.get(id)
    erb :"district/show" 
  end
end
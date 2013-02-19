class SubdistrictController < ApplicationController 

  get '/:id' do |id|
    title "Subdistrito"
    @subdistrict = Subdistrict.get(id)
    erb :"subdistrict/show" 
  end
end
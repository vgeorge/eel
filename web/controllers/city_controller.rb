class CityController < ApplicationController 
  get '/:id' do
    title "Cidade"
    @cidade = City.first
    erb :city 
  end
end
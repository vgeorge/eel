class CityController < ApplicationController 

  get "/" do
    title "Cidades do Brasil"
    @cities = City.all
    erb :"city/index" 
  end

  get '/:id' do |id|
    title "Cidade"
    @city = City.get(id)
    erb :"city/show" 
  end
end
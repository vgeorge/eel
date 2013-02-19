class BairroController < ApplicationController 

  get '/:id' do |id|
    title "Bairro"
    @bairro = Bairro.get(id)
    erb :"bairro/show" 
  end
end
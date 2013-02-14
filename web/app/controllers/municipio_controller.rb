class MunicipioController < ApplicationController
  
  def index
    @municipios = Municipio.all
  end
  
  def show
    @municipio = Municipio.find(params[:id])
  end
  
end

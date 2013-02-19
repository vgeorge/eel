# encoding: UTF-8

class ApplicationController < Sinatra::Base 
  
  helpers ApplicationHelper
  helpers LinkHelper

  
  # set folder for templates to ../views, but make the path absolute 
  set :views, File.expand_path('../../views', __FILE__)
  
  # don't enable logging when running tests 
  configure :production, :development do
    enable :logging 
  end
  
  get '/' do
    @states = State.all(:order => :name.asc)
    erb :index 
  end
  
  # 500 internal error
  error do
    "Houve um problema no servidor ao processar sua requisição."
  end
  
  # 404 page not found
  not_found do
    title 'Página não encontrada!'
    erb :not_found
  end
  
end
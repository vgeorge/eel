class StateController < ApplicationController 

  get "/" do
    title "Estados Brasileiros"
    @states = State.all(:order => :name.asc)
    erb :"state/index" 
  end

  get '/:id' do |id|
    title "Estado"
    @state = State.get(id)
    erb :"state/show" 
  end
end
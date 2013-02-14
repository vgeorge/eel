Web::Application.routes.draw do

  root :to => "municipio#index"

  resources :municipio

end

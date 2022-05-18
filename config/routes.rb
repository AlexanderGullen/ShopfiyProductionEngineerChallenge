Rails.application.routes.draw do
  #automatically generated requests
  #get 'countries/index'
  #get 'countries/show'
  #get 'countries/new'
  #get 'countries/edit'
  #get 'countries/delete'
  #get 'items/index'
  #get 'items/show'
  #get 'items/new'
  #get 'items/edit'
  #get 'items/delete'
  #get 'harmonized_system_codes/index'
  #get 'harmonized_system_codes/show'
  #get 'harmonized_system_codes/new'
  #get 'harmonized_system_codes/edit'
  #get 'harmonized_system_codes/delete'

  #sets the landing page controller to website whith the action index
  root "website#index"

  #ressourcefull routing for countries database with delete request
  resources :countries do
    member do 
      get :delete
    end
  end

  #ressourcefull routing for items database with delete request
  resources :items do
    member do
      get :delete
    end
  end



  
end

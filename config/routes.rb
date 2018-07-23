Rails.application.routes.draw do

  resources :appointments, except: :index
  resources :doctors 
  resources :patients
end

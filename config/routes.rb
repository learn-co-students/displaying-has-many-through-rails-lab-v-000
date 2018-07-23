Rails.application.routes.draw do

  resources :appointments
  resources :doctors 
  resources :patients
end

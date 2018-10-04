Rails.application.routes.draw do

  resources :appointments, only: [:show]
  resources :doctors
  resources :patients


end

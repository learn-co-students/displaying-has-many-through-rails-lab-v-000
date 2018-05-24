Rails.application.routes.draw do
  resources :patients
  resources :doctors
  resources :appointments, only: [:show]
end

Rails.application.routes.draw do
  resources :appointments, only: :show
  resources :patients
  resources :doctors
end
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :doctors
  resources :patients
#  resources :appointments
#  resources :appointments
  resources :patients
  resources :doctors
  resources :doctors
  resources :patients
  resources :appointments, only: [:show]
end

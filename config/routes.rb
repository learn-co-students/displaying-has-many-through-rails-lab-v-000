Rails.application.routes.draw do

resources :doctors
resources :patients
resources :appointments, only: [:show]
  get 'index' => 'doctors#index'
end

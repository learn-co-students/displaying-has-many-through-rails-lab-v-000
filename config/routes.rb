Rails.application.routes.draw do

  resources :patients, only: [:show, :index]
  resources :doctors, only: [:show, :index]
  resources :appointments, only: [:show]

end

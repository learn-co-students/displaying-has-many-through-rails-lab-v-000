Rails.application.routes.draw do
  resources :patients, :doctors, only: [:index, :show]
  resources :appointments, only: [:show]
end

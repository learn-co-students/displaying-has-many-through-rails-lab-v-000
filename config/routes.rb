Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :doctors, only: [:new, :create, :show]
  resources :patients, only: [:new, :index, :show, :create]
  resources :appointments, only: [:show, :new, :create]
end

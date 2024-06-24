Rails.application.routes.draw do
  get 'appointments/show'

  get 'patients/index'

  get 'patients/show'

  get 'doctors/show'

  get 'doctors/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :doctors, only: [:show, :index]
  resources :patients, only: [:show, :index]
  resources :appointments, only: [:show]
end

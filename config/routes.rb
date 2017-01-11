Rails.application.routes.draw do

  get 'appointments/show'

  get 'patients/show'

  get 'patients/index'

  get 'doctors/show'

  get 'doctors/index'

  resources :doctors, only: [:show, :index]
  resources :patients, only: [:show, :index]
  resources :appointments, only: [:show]

end

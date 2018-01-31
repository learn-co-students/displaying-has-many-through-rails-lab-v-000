Rails.application.routes.draw do

  get 'appointments/new'

  get 'appointments/create'

  get 'appointments/edit'

  get 'appointments/update'

  get 'appointments/destroy'

  get 'appointments/index'

  get 'appointments/show'

  get 'doctors/new'

  get 'doctors/create'

  get 'doctors/edit'

  get 'doctors/update'

  get 'doctors/destroy'

  get 'doctors/index'

  get 'doctors/show'

  get 'patients/new'

  get 'patients/create'

  get 'patients/edit'

  get 'patients/update'

  get 'patients/destroy'

  get 'patients/index'

  get 'patients/show'

  resources :doctors
  resources :patients
  resources :appointments, only: [:show]
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end

Rails.application.routes.draw do
  # Add this to the README (and delete the "routes" word): 
    # Also, we've written the routes for you in the `routes.rb` file, so be sure to use the `--skip-routes` flag. This prevents the Rails generators from adding any unnecessary routes.
    # You can use however many flags you need in the generators, so something like `rails g model Post title:string content:text --no-test-framework --skip-routes` is perfectly valid.
    # (If you want to see what other flags and options are available, you can run commands such as `rails g --help` and `rails g model --help`.)
    # Mention in the commit message that this can be edited for better readability if they wish. Or, they can ignore it if they think it adds irrelevant information.

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :doctors
  resources :patients
  resources :appointments, only: [:show]
end

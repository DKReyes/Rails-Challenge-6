Rails.application.routes.draw do
  # get 'customers/index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "customers#index"

  # get '/'  to: "customer#index"
  get '/customers/missing_email'
  get '/customers/alphabetized'
end

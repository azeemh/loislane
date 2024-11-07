Rails.application.routes.draw do
  resources :journalists
  resources :settings
  resources :themes
  resources :categories
  resources :stories
  devise_for :users
  
  get '/', to: 'home#index'
  get '/about', to: 'home#about'
  get '/contact', to: 'home#contact'
  root to: "home#index"

  get '/journalistdashboard', to: 'home#dashboard'
  get '/drafts', to: 'stories#drafts'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"


  #this has to be last so user created categories don't override the application links
  get '/:name', to: 'categories#public'

end

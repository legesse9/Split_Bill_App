Rails.application.routes.draw do
  get 'dashboard/home'
  get 'expenses/new'
  get 'expenses/index'
  get 'trips/index'
  get 'trips/new'
  get 'trips/show'
  root "dashboard#home"

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"


  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :trips do
    resources :expenses
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end

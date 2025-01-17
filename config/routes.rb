Rails.application.routes.draw do
  get 'messages/index'
  get "postulation/create/:offer_id", to: "postulation#create", as: "create_postulation"
  get "postulation/check/:postulation_id", to: "postulation#check", as: "check_postulation"

  get 'postulation/destroy'
  resources :offers
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  
  # Defines the root path route ("/")
  namespace :admin do
    resources :users, only: [:new, :create]
  end

  root "offers#index"
end

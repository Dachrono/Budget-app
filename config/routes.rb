Rails.application.routes.draw do
  devise_for :users, controllers: {
  registrations: 'users/registrations',
  sessions: 'users/sessions'
}
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  
  root "splash#index"

  resources :splash, only: [:index]
  resources :home, only: [:index, :new, :create]
  resources :payment, only: [:show, :create]

  get 'payment/new/:id', to: 'payment#new', as: 'add_new_payment'
  post 'payment/create/:id', to: 'payment#create', as: 'create_new_payment'
  
end

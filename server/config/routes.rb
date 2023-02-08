Rails.application.routes.draw do
  get 'users/index'
  get 'incident_types/index'
  get 'incident/index'
  get 'reports/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:index]
  resources :incident_types, only: [:index]
  resources :incident, only: [:index]
  resources :reports, only: [:index]
end

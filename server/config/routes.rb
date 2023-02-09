Rails.application.routes.draw do
  resources :casualties
  resources :incidents
  resources :incident_types
  resources :users
  resources :vitals
  get 'users/index'
  get 'incident_types/index'
  get 'incident/index'
  get 'incident/:id', to: 'incident#show'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:index]
  resources :incident_types, only: [:index]
  resources :incident, only: [:index]
  resources :reports, only: [:index]
end

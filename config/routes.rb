Rails.application.routes.draw do
  root 'routes#search'

  resources :routes

  post '/find_buses', to: 'routes#find_buses' , as: 'find_buses'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  # config/routes.rb
get '/search', to: 'schedules#search', as: 'search_schedules'


  # Defines the root path route ("/")
  # root "posts#index"
end

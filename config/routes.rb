Rails.application.routes.draw do
  Rails.application.routes.draw do
    root 'routes#search'
    resources :buses do
      resources :tickets, only: [:show, :new, :create]
      get 'srm', on: :collection
      get 'srs', on: :collection
    end
  
    get '/find_buses', to: 'routes#find_buses', as: 'find_buses'
    get '/search', to: 'schedules#search', as: 'search_schedules'
  
    # ... other routes ...
  end
  
  


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  # config/routes.rb



  # Defines the root path route ("/")
  # root "posts#index"
end

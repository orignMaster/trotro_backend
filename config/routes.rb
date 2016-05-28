Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/stops/nearest/:lat/:lng', 
    :to => 'stops#nearest_stop',
    :as => "near", 
    :constraints => {:lat => /\-?\d+(.\d+)?/, :lng => /\-?\d+(.\d+)?/}

  get '/stops/search/:search_param' => 'stops#search'

  resources :agencies 
  resources :fares 
  resources :fare_rules
  resources :routes
  resources :shapes
  resources :stops
  resources :stop_times
  resources :trips
  
end

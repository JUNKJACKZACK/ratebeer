Rails.application.routes.draw do
  resources :beers
  resources :breweries
	root 'breweries#index'
	get 'all_beers', to: 'beers#index'
  resources :ratings, only: [:index, :new, :create, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

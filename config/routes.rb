GPB::Application.routes.draw do

	# get '/auth/facebook/callback', to: 'sessions#create'
  root 'books#index'

  resources :books

  resources :users
end

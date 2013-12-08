GPB::Application.routes.draw do
	get 'auth/:provider/callback', to: 'sessions#create'
	get 'auth/failure', to: redirect('/')
	get 'signout', to: 'sessions#destroy', as: 'signout'

	# get '/auth/facebook/callback', to: 'sessions#create'
  root 'pages#index'

  resources :books

  resources :users

  get '/how_it_works' => 'pages#how_it_works', as: 'how_it_works'
  get '/index' => 'pages#index', as: 'landing'
end

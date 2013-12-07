GPB::Application.routes.draw do
	# match 'auth/:provider/callback', to: 'sessions#create'
	# match 'auth/failure', to: redirect('/')
	# match 'signout', to: 'sessions#destroy', as: 'signout'

	# get '/auth/facebook/callback', to: 'sessions#create'
  root 'books#index'

  resources :books

  resources :users
end

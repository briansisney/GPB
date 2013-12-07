GPB::Application.routes.draw do
	get 'auth/:provider/callback', to: 'sessions#create'
	get 'auth/failure', to: redirect('/')
	get 'signout', to: 'sessions#destroy', as: 'signout'

	# get '/auth/facebook/callback', to: 'sessions#create'
  root 'books#index'

  resources :books

  resources :users
end

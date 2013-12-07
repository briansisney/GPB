GPB::Application.routes.draw do

  root 'books#index'

  resources :books

  resources :users
end

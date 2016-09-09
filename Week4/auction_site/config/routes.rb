Rails.application.routes.draw do

  ### USERS ###

  get '/users', to: 'users#index'

  get '/users/new', to: 'users#new'

  post '/users', to: 'users#create'

  get '/users/:user_id', to: 'users#show'

  delete '/users/:user_id', to: 'users#destroy'

  ### PRODUCTS ###

  get '/users/:user_id/products', to: 'products#index'
  get '/users/:user_id/products/new', to: 'products#new'
  post '/users/:user_id/products', to: 'products#create',  as: :user_products

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

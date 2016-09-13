Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'concerts#index'

  get '/search', to: "concerts#search"
  get '/popular', to: "concerts#popular"

  resources :concerts do
    resources :comments, only: [:new, :create]
  end
end

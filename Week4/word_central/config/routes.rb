Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'site#home', as: :home

  get '/text_inspections/new', to: 'test_inspections#new'
  post '/text_inspections', to: 'test_inspections#create'

  get '/asciis/new', to: 'asciis#new'
  post '/asciis', to: 'asciis#create'

  get '/dummytexts/new', to: 'dummy_texts#new'
  post '/dummytexts', to: 'dummy_texts#create'
end

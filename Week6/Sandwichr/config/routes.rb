Rails.application.routes.draw do

  resources :sandwiches, only: [:index, :show], controller: "sandwich_views"
  scope "/api" do
    resources :ingredients, except: [:new, :edit]
    resources :sandwiches, except: [:new, :edit], controller: "sandwiches_views"

    post "/sandwiches/:id/ingredients/add", to: "sandwiches#add", as: :add_ingredients
  end
  
end

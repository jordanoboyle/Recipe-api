Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  # Defines the root path route ("/")
  # root "posts#index"

  # Recipes Controller Routes
  post "/recipes", controller: "recipes", action: "create"
  get "/recipes", controller: "recipes", action: "index"
  get "/recipes/:id", controller: "recipes", action: "show"
  patch "/recipes/:id", controller: "recipes", action: "update"
  delete "/recipes/:id", controller: "recipes", action: "destroy"
  
  # Chefs Controller Routes
  
end

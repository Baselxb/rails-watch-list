Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # Read all
  get    "lists",          to: "lists#index"
  # Create
  get    "lists/new",      to: "lists#new"
  post   "lists",          to: "lists#create"
  # Read one - The `show` 
  get    "lists/:id",      to: "lists#show"
end

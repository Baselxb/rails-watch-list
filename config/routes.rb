Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # Read all
  root to: "lists#index"
  resources :lists, only: [ :index, :show, :new, :create, :destroy ] do
    resources :bookmarks, only: [ :new, :create ]
  end
    resources :bookmarks, only: [ :destroy ]
end

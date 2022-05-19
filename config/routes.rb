Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users
  resources :products
  get "homes/cart"
  get "homes#add_to_cart(:id)", to: "homes#add_to_cart", as: "add"
  get "homes#remove(:id)", to: "homes#remove", as: "remove"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

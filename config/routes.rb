Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  mount HyperKittenMeow::Engine, at: "/blog"
  resources :pages, only: [:show]
end

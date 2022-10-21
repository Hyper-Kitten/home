Rails.application.routes.draw do
  root "pages#show", id: "home"
  mount HyperKittenMeow::Engine, at: "/blog"

  resources :pages, only: [:show]
  resources :posts, only: [:index, :show]
  resources :contact_requests, only: [:new, :create]
end

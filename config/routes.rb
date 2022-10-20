Rails.application.routes.draw do
  get 'contact_requests/create'
  root "pages#show", id: "home"
  mount HyperKittenMeow::Engine, at: "/blog"
  resources :pages, only: [:show]
  resources :contact_requests, only: [:create]
end

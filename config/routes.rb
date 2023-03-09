Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  post "/artists/:artist_id/messages", to: "messages#create", as: :messages

  get 'artists', to: 'users#index'
  get 'artists/:id', to: 'users#show', as: :artist
  get 'offers', to: 'offers#index'
  get 'offers/:id', to: 'offers#show', as: :offer
  get 'conversations/:id', to: 'conversations#show', as: :conversation
  post 'conversations', to: 'conversations#create'
  post 'conversations/:conversation_id/messages', to: "messages#create", as: :conversation_messages
  get 'offers/new', to: 'offers#new'
  get 'offers/:offer_id/review', to: "reviews#new", as: :reviews

  get 'artists/:id/offers/new', to: "offers#new"

  post "/artists/:artist_id/offers", to: "offers#create", as: :offers
  post "offers/new", to: "offers#new"


  # patch 'offers/:id/accept', to: 'offers#accept', as: :offer_accept
  # patch 'offers/:id/decline', to: 'offers#decline', as: :offer_decline

  resources :offers, only: [] do
    patch :accept
    patch :decline
  end
end

Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  post "/artists/:artist_id/messages", to: "messages#create", as: :messages

  get 'artists', to: 'users#index'
  get 'artists/:id', to: 'users#show', as: :artist
  get 'conversations/:id', to: 'conversations#show', as: :conversation
  post 'conversations', to: 'conversations#create'
  get 'conversations', to: 'conversations#index', as: :conversation_list
  post 'conversations/:conversation_id/messages', to: "messages#create", as: :conversation_messages
  get 'offers', to: 'offers#index'
  get 'artists/:id/offers/new', to: "offers#new", as: :offers_new
  post '/artists/:id/offers', to: "offers#create", as: :user_offers
  get 'offers/:id', to: 'offers#show', as: :offer
  get 'offers/:offer_id/review', to: "reviews#new", as: :reviews

  patch 'offers/:id/accept', to: 'offers#accept', as: :offer_accept
  patch 'offers/:id/decline', to: 'offers#decline', as: :offer_decline

  # resources :offers, only: [] do
  #   patch :accept
  #   patch :decline
  # end
end

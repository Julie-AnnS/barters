Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get 'artists', to: 'users#index'
  get 'artists/:id', to: 'users#show', as: :artist
  get 'conversations/:id', to: 'conversations#show', as: :conversation
  post 'conversations', to: 'conversations#create'
  post "/artists/:artist_id/messages", to: "messages#create", as: :messages

  # get 'offers', to: 'offers#index'
end

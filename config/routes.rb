Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  post "/artists/:artist_id/messages", to: "messages#create", as: :messages

  get 'artists', to: 'users#index'
  get 'artists/:id', to: 'users#show', as: :artist
  get 'offers', to: 'offers#index'
  get 'offers/:id', to: 'offers#show', as: :show_offer
end

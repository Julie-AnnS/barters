Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get 'artists', to: 'users#index'
  get 'artists/:id', to: 'users#show', as: :artist
  # get 'offers', to: 'offers#index'
end

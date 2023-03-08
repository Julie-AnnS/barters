Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  post "/artists/:artist_id/messages", to: "messages#create", as: :messages

end

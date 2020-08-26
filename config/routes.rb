Rails.application.routes.draw do
  resources :gifs, only: :index
end

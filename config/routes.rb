Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :bike_rakes
  resources :lanes
  resources :shops
  resources :videos
end

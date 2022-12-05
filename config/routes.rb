Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :bike_racks

  resources :lanes

  resources :shops

  resources :videos
end

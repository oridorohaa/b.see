Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root to: "pages#home"


  # Defines the root path route ("/")
  # root "articles#index"
  get "/menu", to: "pages#menu"

  resources :bike_rakes
  resources :lanes
  resources :shops
  resources :videos

end

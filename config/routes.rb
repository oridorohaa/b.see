Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root to: "pages#home"
  get "/menu", to: "pages#menu"

  resources :bike_racks do
    resources :bike_rack_likes, only: %i[create destroy]
    resources :bike_rack_comments, only: :create
  end

  resources :lanes do
    resources :lane_likes, only: %i[create destroy]
  end

  resources :shops do
    resources :shop_likes, only: %i[create destroy]
  end

  resources :videos do
    resources :video_likes, only: %i[create destroy]
  end

end

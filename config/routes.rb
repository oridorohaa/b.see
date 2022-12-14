Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root to: "pages#home"
  get "/menu", to: "pages#menu"
  get "/data", to: "pages#data"
  get "/profile", to: "pages#profile"
  get '/tagged', to: "videos#tagged", as: :tagged

  resources :bike_racks do
    resources :bike_rack_likes, only: %i[create destroy]
    resources :bike_rack_comments, only: %i[create destroy]
    resources :bike_rack_reports, only: %i[new create destroy]
  end

  # post 'racks/:rack_id/reports/new', to: 'test#test', as: 'new_rack_report'

  resources :lanes do
    resources :lane_likes, only: %i[create destroy]
    resources :lane_comments, only: %i[create destroy]
    resources :lane_reports, only: %i[new create destroy]
  end

  resources :shops do
    resources :shop_likes, only: %i[create destroy]
    resources :shop_comments, only: %i[create destroy]
    resources :shop_reports, only: %i[new create destroy]
  end

  resources :videos do
    resources :video_likes, only: %i[create destroy]
    resources :video_comments, only: %i[create destroy]
    resources :video_reports, only: %i[new create destroy]
  end

  get "/recent", to: "videos#recent"
  get "/most_liked", to: "videos#most_liked"
  get "/maintenance", to: "videos#maintenance"
  get "/repair", to: "videos#repair"
  get "/styling", to: "videos#styling"
  get "/other", to: "videos#other"
  get "/liked_shops_map", to: "pages#liked_shops_map"
end

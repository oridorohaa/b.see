Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root to: "pages#home"
  get "/menu", to: "pages#menu"

  resources :bike_racks do
    resources :bike_rack_likes, only: %i[create destroy]
    resources :bike_rack_comments, only: :create
    resources :bike_rack_reports, only: %i[new create]
  end

  # post 'racks/:rack_id/reports/new', to: 'test#test', as: 'new_rack_report'

  resources :lanes do
    resources :lane_likes, only: %i[create destroy]
    resources :lane_comments, only: :create
    resources :lane_reports, only: %i[new create]
  end

  resources :shops do
    resources :shop_likes, only: %i[create destroy]
    resources :shop_comments, only: :create
    resources :shop_reports, only: %i[new create]
  end

  resources :videos do
    resources :video_likes, only: %i[create destroy]
    resources :video_comments, only: :create
    resources :video_reports, only: %i[new create]
  end
end

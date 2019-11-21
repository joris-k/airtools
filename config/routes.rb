Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :tools, only: [:create, :new, :index, :show, :destroy, :edit, :update] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show, :index, :update]
end

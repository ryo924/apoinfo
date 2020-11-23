Rails.application.routes.draw do
  devise_for :users
  get 'appointments/index'
  root to: "appointments#index"
  resources :appointments do
    resources :comments, only: :create
  end
end

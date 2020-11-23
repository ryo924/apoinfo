Rails.application.routes.draw do
  devise_for :users
  get 'appointments/index'
  root to: "appointments#index"
  resources :appointments, only: [:new, :create, :show, :edit, :update, :destroy]
end

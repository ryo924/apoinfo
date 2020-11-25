Rails.application.routes.draw do
  devise_for :users
  get 'appointments/index'
  root to: "appointments#index"
  resources :appointments do
    resources :comments, only: :create
    resources :profiles, only: [:new, :create, :show, :edit, :update]
    collection do
      get 'search'
    end
  end
end

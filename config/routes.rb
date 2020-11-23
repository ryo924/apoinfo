Rails.application.routes.draw do
  get 'appointments/index'
  root to: "appointments#index"
end

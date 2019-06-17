Rails.application.routes.draw do
  root 'hello#index'
  get 'hello/index'
  resources :users
end

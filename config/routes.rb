Rails.application.routes.draw do
  root 'hello#index'
  get 'hello/index'
  resources :users
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end

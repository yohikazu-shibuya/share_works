Rails.application.routes.draw do
  devise_for :users
  root to: "notices#index"
  resources :notices
  resources :manuals
  resources :qas do
    resources :messages
  end
end

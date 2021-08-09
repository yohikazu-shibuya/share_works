Rails.application.routes.draw do
  devise_for :users
  root to: "manuals#index"
  resources :manuals
  resources :qas
end

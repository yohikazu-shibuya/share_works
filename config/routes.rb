Rails.application.routes.draw do
  get 'manuals/index'
  devise_for :users
  root to: "manuals#index"
end

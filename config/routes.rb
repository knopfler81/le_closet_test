Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users

  resources :products do
    resource :likes
  end
end

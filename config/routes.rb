Rails.application.routes.draw do
  root to: 'products#index'
  devise_for :users

  resources :users

  resources :products do
    resources :likes
  end

  resources :users do
    resources :products do
      resources :likes
    end
  end
end

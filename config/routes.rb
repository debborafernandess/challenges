Rails.application.routes.draw do
  devise_for :users

  root 'challenges#index'

  resources :challenges, only: [:index, :show] do
    member do
      post :start
      post :finish
    end
  end

  resources :solutions, only: [:show]
end

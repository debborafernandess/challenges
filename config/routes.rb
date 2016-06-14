Rails.application.routes.draw do
  devise_for :users

  root 'challenges#index'

  resources :challenges, only: [:index, :show] do
    member do
      post :start
    end
  end
end

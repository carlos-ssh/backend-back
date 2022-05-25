# frozen_string_literal: true

Rails.application.routes.draw do
  # root "articles#index"
  namespace :api do
    namespace :v1 do
      get 'tokens/create'
    end
  end

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :events
      resources :products
      resources :categories
      # resources :users, only: [:create]
      resources :registrations, only: [:create]
      resources :sessions, only: [:create]
      resources :tokens, only: [:create]

      get :logged_in, to: "sessions#logged_in"
      delete :logout, to: "sessions#logout"
      
      root to: "home#index"
    end
  end
end

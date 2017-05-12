Rails.application.routes.draw do
  resources :labs do
    resources :articles, only: %i[index new create]
  end
  resources :articles, only: %i[show edit update destroy]

  get :about, to: 'about#show'
  root to: 'labs#index'
end

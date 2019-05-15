Rails.application.routes.draw do
  root "aunties#index"
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth' }
  resources :aunties do
    resources :rants, only: [:new, :create]
  end
  resources :advices, only: [:show, :edit, :update]
  resources :rants, except: [:new, :create]
  resources :users, only: [:show]
end

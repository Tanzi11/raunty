Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth' }
  resources :aunties do
    resources :rants, only: [:new, :create]
  end
  resources :advices, only: [:show, :update]
  resources :rants, except: [:new, :create]
  resources :users, only: [:show]
end

Rails.application.routes.draw do
  devise_for :users
  resources :aunties do
    resources :rants, only: [:new, :create]
  end
  resources :advices, only: [:show, :update]
end

Rails.application.routes.draw do
  devise_for :users
  root "aunties#index"
end

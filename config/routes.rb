Rails.application.routes.draw do
  devise_for :users
  resources :races
  root 'races#index'
end

Rails.application.routes.draw do
  devise_for :users
  resources :races
  root 'static_pages#index'
  get '/about', to: 'static_pages#about', as: 'about'
  get '/contact', to: 'static_pages#contact', as: 'contact'
end

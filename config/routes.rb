Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get 'homes/about', as: 'about'

  resources :books, only: [:index, :show, :create, :update, :edit, :destroy]
  resources :users, only: [:index, :show, :update, :edit]
end

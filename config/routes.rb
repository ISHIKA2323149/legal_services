Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'homes#index'

  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :users, only: [:show]
  resources :cases
  resources :news
  resources :forum_threads
  resources :lawyer_details
  resources :rooms do
    resources :messages
  end
end

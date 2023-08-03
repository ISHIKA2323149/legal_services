require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'homes#index'

  mount Sidekiq::Web => '/sidekiq'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :users, only: [:show]
  resources :cases
  resources :news
  resources :forum_threads, except: [:edit, :update, :destroy]
  resources :lawyer_details, except: [:destroy]
  resources :rooms, only: [:show, :index] do
    resources :messages, only: [:create]
  end

  resources :lawyer_details, only: [:index, :show] do
    resources :reviews, only: [:create]
  end

  post '/users/hire', to: 'users#hire_lawyer', as: 'hire_lawyer'
end

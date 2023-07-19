Rails.application.routes.draw do
  root 'homes#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: {registrations: 'users/registrations'}
  resources :news
  resources :forum_threads
end

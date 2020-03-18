Rails.application.routes.draw do
  get 'completeds/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'completed_points/index'
  resources :points
  devise_for :users, controllers: { 
    registrations: 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks' 
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'completed_points', to: "completed_points#create", as: 'completed_points'
  root 'completed_points#index'
end

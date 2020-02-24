Rails.application.routes.draw do
  get 'completed_points/index'
  resources :points
  devise_for :users, controllers: { 
    registrations: 'users/registrations' 
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'completed_points/:point_id', to: "completed_points#create", as: 'completed_point'
  root 'completed_points#index'
end

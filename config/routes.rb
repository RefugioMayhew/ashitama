Rails.application.routes.draw do
  root to: 'toppages#index'
  
  get 'toppages/index'
  
  resources :categories
  resources :regions
  resources :teams

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

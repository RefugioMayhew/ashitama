Rails.application.routes.draw do
  get 'regions/index'

  get 'regions/new'

  get 'regions/create'

  get 'regions/edit'

  get 'regions/update'

  get 'regions/destroy'

  get 'regions/show'

  root to: 'toppages#index'
  
  get 'toppages/index'
  
  resources :categories
  resources :regions

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

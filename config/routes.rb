Rails.application.routes.draw do
  resources :responses
  root 'publications#index'

  devise_for :users
  resources :pivots
  resources :messages
  resources :publications do
    resources :reviews
  end
  post 'pivots/new', to: 'pivots#create', as: 'create_pivot'
  post 'publications/index', to: 'publications#index', as: 'filter'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Create reviews

end

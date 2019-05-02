Rails.application.routes.draw do
  root 'users#index'

  get 'events', to: 'events#index'
  get 'events/show'
  get 'events/new'
  post 'events', to: 'events#create'

  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'
  get 'signin', to: 'sessions#new'
  post 'signin', to: 'sessions#create'
  delete 'signout', to: 'sessions#destroy'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

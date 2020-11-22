Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :usuarios
  get 'welcome/index'
  resources :anuncios
  root 'welcome#index'
  get 'chats/show'
  mount ActionCable.server => '/cable'
  get '/search', to: 'anuncios#search', as: 'search'
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'usuarios#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


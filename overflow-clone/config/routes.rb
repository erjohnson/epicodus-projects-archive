Rails.application.routes.draw do
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root :to => 'questions#index'
  resources :sessions
  resources :users
  resources :questions do
    resources :answers
  end
  resources :votes
end

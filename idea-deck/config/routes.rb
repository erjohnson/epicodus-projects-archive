Rails.application.routes.draw do
  root :to => 'ideas#index'
  resources :users
  resources :ideas
end

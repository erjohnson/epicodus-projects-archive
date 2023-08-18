Rails.application.routes.draw do
  root :to => 'selfies#index'
  resources :selfies
end

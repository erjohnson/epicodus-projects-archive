Rails.application.routes.draw do
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}

  resources :messages
  resources :users

  authenticated :user do
    devise_scope :user do
      root to: "messages#index", :as => "home"
    end
  end

  unauthenticated do
    devise_scope :user do
      root to: "static_pages#index", :as => "hello"
    end
  end
end

Rails.application.routes.draw do
  match('tickets', {:via => :get, :to => 'tickets#index'})
  match('tickets', {:via => :post, :to => 'tickets#create'})
  match('tickets/:id', {:via => :get, :to => 'tickets#show'})
end

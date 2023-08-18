Rails.application.routes.draw do
  match('aliens', {:via => :get, :to => 'aliens#index'})
  match('aliens/new', {:via => :get, :to => 'aliens#new'})
  match('aliens', {:via => :post, :to => 'aliens#create'})
  match('aliens/:id', {:via => :get, :to => 'aliens#show'})
  match('aliens/:id/edit', {:via => :get, :to => 'aliens#edit'})
  match('aliens/:id', {:via => [:patch, :put], :to => 'aliens#update'})
  match('aliens/:id', {:via => :delete, :to => 'aliens#destroy'})

  match('sightings', {:via => :get, :to => 'sightings#index'})
  match('sightings/new', {:via => :get, :to => 'sightings#new'})
end

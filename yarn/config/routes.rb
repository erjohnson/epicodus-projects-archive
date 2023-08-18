Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'projects#index'})
  match('projects', {:via => :get, :to => 'projects#index'})
  match('projects/new', {:via => :get, :to => 'projects#new'})
  match('projects', {:via => :post, :to => 'projects#create'})
  match('projects/:id', {:via => :get, :to => 'projects#show'})
  match('projects/:id/edit', {:via => :get, :to => 'projects#edit'})
  match('projects/:id', {:via => [:patch, :put], :to => 'projects#update'})
  match('projects/:id', {:via => :delete, :to => 'projects#destroy'})
  match('projects/:project_id/stories/new', {:via => :get, :to => 'stories#new'})
  match('projects/:project_id/stories', {:via => :post, :to => 'stories#create'})
  match('projects/:project_id/stories/:id', {:via => :delete, :to => 'stories#destroy'})
end

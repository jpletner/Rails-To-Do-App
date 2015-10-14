Rails.application.routes.draw do
      match('tasks', {:via => :get, :to => 'tasks#index'})
      match('tasks', {:via => :post, :to => 'tasks#create'})
      match('tasks/new', {:via => :get, :to => 'tasks#new'})
      match('tasks/:id', {:via => :get, :to => 'tasks#show'})
      match('tasks/:id/edit', {:via => :get, :to => 'tasks#edit'})
      match('tasks/:id', {:via => [:patch, :put], :to => 'tasks#update'})
      match('tasks/:id', {:via => :delete, :to => 'tasks#destroy'})
      match('/', {:via => :get, :to => 'tasks#index'})
end

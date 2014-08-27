Rails.application.routes.draw do
  match('sections', {:via => :get, :to => 'sections#index'})
  match('sections/new', {:via => :get, :to => 'sections#new'})
  match('sections/:id', {:via => :get, :to => 'sections#show'})
  match('sections/', {:via => :post, :to => 'sections#create'})
  match('sections/:id/edit', {:via => :get, :to => 'sections#edit'})
  match('sections/:id', {:via => [:patch, :put], :to => 'sections#update'})
  match('sections/:id', {:via => :delete, :to => 'sections#destroy'})

  match('lessons', {:via => :get, :to => 'lessons#index'})
  match('sections/:section_id/lessons/new', {:via => :get, :to => 'lessons#new'})
  match('sections/:section_id/lessons/:id', {:via => :get, :to => 'lessons#show'})
  match('sections/:section_id/lessons', {:via => :post, :to => 'lessons#create'})
  match('sections/:section_id/lessons/:id/edit', {:via => :get, :to => 'lessons#edit'})
  match('sections/:section_id/lessons/:id', {:via => [:patch, :put], :to => 'lessons#update'})
  match('sections/:section_id/lessons/:id', {:via => :delete, :to => 'lessons#destroy'})
end

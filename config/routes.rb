Rails.application.routes.draw do
  match('lessons', {:via => :get, :to => 'lessons#index'})
  match('lessons/new', {:via => :get, :to => 'lessons#new'})
  match('lessons/:id', {:via => :get, :to => 'lessons#show'})
  match('lessons/', {:via => :post, :to => 'lessons#create'})
end
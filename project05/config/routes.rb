ActionController::Routing::Routes.draw do |map|
  map.resources :quotes

  map.resources :articles
  
  map.root :controller => 'articles'

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end

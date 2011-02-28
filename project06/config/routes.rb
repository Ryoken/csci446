ActionController::Routing::Routes.draw do |map|
  map.resources :roles


	map.resources :user_sessions
	map.resources :users
  	map.connect ':controller/:action/:id'
	map.connect ':controller/:action/:id.:format'
	map.root :controller => 'users'
	map.login "login", :controller => "user_sessions", :action => "new"
	map.logout "logout", :controller => "user_sessions", :action => "destroy"

end

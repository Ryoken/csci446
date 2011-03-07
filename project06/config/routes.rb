ActionController::Routing::Routes.draw do |map|

	map.resources :game, :only => [:index]
	map.resources :users, :only => [:new, :edit, :create]
	map.resources :user_sessions, :only => [:new, :create, :detroy]
	map.root :controller => "games", :action => "index"
	map.login "login", :controller => "user_sessions", :action => "new"
	map.logout "logout", :controller => "user_sessions", :action => "destroy"

	map.namespace :admin do |a|
		a.resources :roles
		a.resources :games
		a.resources :users, :only => [:index, :edit, :update, :destroy]
		a.root :controller => 'games', :action => 'index'
	end
	
	map.namespace :member do |m|
		m.resources :games
		m.resources :users, :only => [:edit, :update, :destroy]
		m.root :controller => 'games', :action => 'index'
	end

end
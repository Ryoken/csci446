authorization do
	
	role :guest do
		has_permission_on :users, :to => [ :index, :create, :new ]
	end
	
	role :member do
		includes :guest
		has_permission_on :users, :to => [ :edit ]
	end
	
	role :admin do
		includes :member
		has_permission_on :users, :to => [ :new, :update, :destroy ]
		has_permission_on :roles, :to => [ :index, :create, :edit, :update, :destroy ]
	end
	
end
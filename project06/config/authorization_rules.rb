authorization do
	
	role :guest do
		has_permission_on :users, :to => [ :create, :new ]
	end
	
	role :member do
		has_permission_on :member_users, :to => [ :create, :new, :edit, :update, :destroy ]
	end
	
	role :admin do
		has_permission_on :admin_users, :to => [ :index, :edit, :update, :destroy ]
		has_permission_on :admin_roles, :to => [ :index, :create, :edit, :destroy, :update, :new]
	end
	
end
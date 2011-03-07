class AddLoginTime < ActiveRecord::Migration

	def self.up
		add_column :users, :last_login_at, :datetime
		add_column :users, :current_login_at, :datetime
		User.all.each do |u|
			u.update_attribute :last_login_at, u.updated_at
			u.update_attribute :current_login_at, u.updated_at
		end
	end

	def self.down
		remove_column :users, :last_login_at
		remove_column :users, :current_login_at
	end

end

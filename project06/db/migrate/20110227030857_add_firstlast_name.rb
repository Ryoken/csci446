class AddFirstlastName < ActiveRecord::Migration

	def self.up
		add_column :users, :fname, :string
		add_column :users, :lname, :string
		User.find(:all).each do |u|
			u.update_attribute :fname, u.username
		end
	end

	def self.down
		remove_column :users, fname
		remove_column :users, lname
	end

end
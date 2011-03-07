class AddGameRating < ActiveRecord::Migration

	def self.up
		add_column :games, :rating, :integer
	end

	def self.down
		remove_column :games, :rating
	end

end

class Role < ActiveRecord::Base

	has_many :users
	attr_accessible :name
	cattr_reader :per_page
	@@per_page = 8

end
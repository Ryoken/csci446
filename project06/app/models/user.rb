class User < ActiveRecord::Base

	attr_accessible :username, :password, :password_confirmation
	acts_as_authentic
	cattr_reader :per_page
	@@per_page = 10

end

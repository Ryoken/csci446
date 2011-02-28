class User < ActiveRecord::Base

	attr_accessible :username, :password, :password_confirmation, :photo
	acts_as_authentic
	cattr_reader :per_page
	@@per_page = 10
	has_attached_file :photo, :styles => { :small => "150x150>" }, :url => "/assets/:class/:attachment/:id/:style/:filename"

end

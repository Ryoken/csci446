class User < ActiveRecord::Base

	belongs_to :role
	attr_accessible :username, :password, :password_confirmation, :photo
	acts_as_authentic
	cattr_reader :per_page
	@@per_page = 10
	has_attached_file :photo, :styles => { :small => "300x300>", :icon => "50x50>" }, :url => "/assets/:class/:attachment/:id/:style/:filename"

	def role_symbols
		return [role.name.to_sym]
	end

end
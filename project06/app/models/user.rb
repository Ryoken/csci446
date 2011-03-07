class User < ActiveRecord::Base

	belongs_to :role
	has_many :games
	before_validation :set_member
	attr_accessible :username, :password, :password_confirmation, :photo, :fname, :lname, :role_id
	acts_as_authentic do |c|
		c.merge_validates_length_of_password_field_options({:minimum => 6})
	end
	cattr_reader :per_page
	@@per_page = 10
	has_attached_file :photo, :styles => { :small => "300x300>", :icon => "50x50>" }, :url => "/assets/:class/:attachment/:id/:style/:filename"

	def role_symbols
		return [role.name.downcase.to_sym]
	end
	
	def get_name
		if fname?
			if lname?
				fname + " " + lname
			else
				fname
			end
		else
			username
		end
	end
	
	def set_member
		self.role = Role.find_by_name("member") if self.role.nil?
	end

end
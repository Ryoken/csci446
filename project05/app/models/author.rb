class Author < ActiveRecord::Base

	validates_presence_of :name
	validate :no_sally

	has_many :articles
	
	has_attached_file :photo, :url => "/assets/:class/:attachment/:id/:style/:filename"
	
	cattr_reader :per_page
	@@per_page = 10
	
	def to_s
		name
	end
	
	def no_sally
		errors.add_to_base("Sally is not allowed") if name.downcase.include? "sally"
	end

end

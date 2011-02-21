class Article < ActiveRecord::Base
	validates_presence_of :title, :body, :message => '- may not be blank.'
		
	before_save :add_count
	
	belongs_to :author
	
	cattr_reader :per_page
	@@per_page = 10

private
	
	def add_count
		self.edits += 1 unless self.new_record?
	end

end

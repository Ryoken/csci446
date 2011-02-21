class Article < ActiveRecord::Base
	validates_presence_of :title, :body, :message => '- may not be blank.'
	validates_uniqueness_of :title, :message => '- there is already an article with this title.'
	validates_uniqueness_of :body, :message => '- this article has already been posted under another title.'
	
	before_save :add_count
	
	belongs_to :author

private
	
	def add_count
		self.edits += 1 unless self.new_record?
	end

end

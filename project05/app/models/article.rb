class Article < ActiveRecord::Base
	validates_presence_of :title, :author, :body, :message => '- may not be blank.'
	validates_uniqueness_of :title, :message => '- there is already an article with this title.'
	validates_uniqueness_of :body, :message => '- this article has already been posted under another title.'
	validate :no_sally
	
	before_save :add_count

private
	
	def add_count
		self.edits += 1 unless self.new_record?
	end
	
	def no_sally
		errors.add_to_base("Sally may not be an author.") if author.downcase.include? "sally"
	end

end

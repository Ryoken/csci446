class Game < ActiveRecord::Base

	validates_presence_of :name, :rating, :author
	before_validation :set_author
	belongs_to :user
	attr_accessible :name, :author, :rating
	cattr_reader :per_page
	@@per_page = 8

protected

	def set_author
		self.author = UserSession.find.record.id if self.author.nil?
	end

end
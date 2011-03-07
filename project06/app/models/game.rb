class Game < ActiveRecord::Base

	validates_presence_of :name, :rating, :author
	belongs_to :user
	attr_accessible :name, :author, :rating
	cattr_reader :per_page
	@@per_page = 10

end
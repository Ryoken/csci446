class Article < ActiveRecord::Base
	validates_presence_of :title, :author, :body, :message => '- may not be blank.'
	validates_uniqueness_of :title, :message => '- there is already an article with this title.'
	validates_uniqueness_of :body, :message => '- this article has already been posted under another title.'
end

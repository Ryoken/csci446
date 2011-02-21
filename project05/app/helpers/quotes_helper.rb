module QuotesHelper

	def get_quote
		Quote.find(:first, :offset => rand(Quote.count)).text
	end

end

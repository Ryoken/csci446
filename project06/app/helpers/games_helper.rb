module GamesHelper

	def get_rating(game)
		case game.rating
			when 0 : return "Terrible"
			when 1 : return "Bad"
			when 2 : return "Neutral"
			when 3 : return "Good"
			when 4 : return "Excellent"
		end
	end
	
	def get_date(game)
		@temp ||=User.find(game.author).get_name
		return "#{game.created_at.strftime("%b. %d, %Y")} by #{@temp}"
	end
	
	def select_author
		@game.author
	end

end
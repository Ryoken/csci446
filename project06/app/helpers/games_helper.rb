module GamesHelper

	def get_rating(rating)
		case rating
			when 0 : return "Terrible"
			when 1 : return "Bad"
			when 2 : return "Neutral"
			when 3 : return "Good"
			when 4 : return "Excellent"
		end
	end
	
	def get_date(game)
		if ! current_user.nil?
			if game.author == current_user.id
				@temp = "me"
			else
				@temp = User.find(game.author).get_name
			end
		else
			@temp = User.find(game.author).get_name
		end
		return "#{game.created_at.strftime("%b. %d, %Y")} by #{@temp}"
	end
	
	def select_author
		@game.author
	end

end
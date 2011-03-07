module UsersHelper

	def validation_code
		if !current_user
			render :partial => "validate"
		end
	end
	
	def get_num_games(user_id)
		Game.find_all_by_author(user_id).count
	end

end
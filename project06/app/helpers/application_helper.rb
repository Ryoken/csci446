# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

	def user_nav
		if current_user
			render :partial => "global/usernav_user"
		else
			render :partial => "global/usernav_nouser"
		end
	end
	
	def user_nav_photo
		if current_user.photo?
			render :partial => "global/usernav_photo"
		end
	end

end

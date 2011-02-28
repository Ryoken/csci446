# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

	def user_nav()
		out="Welcome "
		if current_user
			out << current_user.get_name << "!<br/>"
			out << link_to('Edit Profile', edit_user_path(current_user))
			out << " | "
			out << link_to('Logout', logout_path)
		else
			out << "guest!<br/>" << link_to('Register', new_user_path)
			out << " | "
			out << link_to('Log In', login_path)
		end
		out.html_safe
	end
	
end

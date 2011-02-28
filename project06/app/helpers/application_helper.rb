# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

	def user_nav()
		out=""
		if current_user
			out << "Welcome " << current_user.username << "! "
			out << link_to('Edit Profile', edit_user_path(:current))
			out << " | "
			out << link_to('Logout', logout_path)
		else
			out << link_to('Register', new_user_path)
			out << " | "
			out << link_to('Log In', login_path)
		end
		out.html_safe
	end
	
	def test()
		"hello"
	end
	
end

module UsersHelper

	def validation_code
		out = ""
		if !current_user
			out << recaptcha_tags
		end
		out.html_safe
	end
	
	def role_code(f)
		out = ""
		if current_user
			out << f.label(:role_id)
			out << "<br/>" << @user.role_id
			out << f.select(:role_id, Role.find(:all).collect { |r| [r.name, r.id] }, :include_blank => false, :selected => @user.role_id)
		end
		out.html_safe
	end

end

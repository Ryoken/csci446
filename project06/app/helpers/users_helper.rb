module UsersHelper

	def validation_code(user)
		out=""
		if !current_user
			out  << recaptcha_tags
		end
		out.html_safe
	end

end

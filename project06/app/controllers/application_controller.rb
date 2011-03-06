# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base

	helper :all
	protect_from_forgery
	filter_parameter_logging :password
	before_filter { |c| Authorization.current_user = c.current_user }
	
	helper_method :current_user_session, :current_user

	def current_user_session
		return @current_user_session if defined?(@current_user_session)
		@current_user_session = UserSession.find
	end
	
	def current_user
		return @current_user if defined?(@current_user)
		@current_user = current_user_session && current_user_session.record
	end
	
	def require_user
		unless current_user
			flash[:notice] = "Please log in before trying that!"
			redirect_to root_url
			return false
		end
	end

	def require_no_user
		if current_user
			flash[:notice] = "Please log out before trying that!"
			redirect_to admin_root_url
			return false
		end
	end
	
	def begin_page
		if User.find_by_username(@user_session.username).role.name == "admin"
			redirect_to admin_root_url
		else
			redirect_to member_root_url
		end
	end
	
	def go_home
		#if User.find_by_username(@user_session.username).role.name == "admin"
		if current_user.role.name == "admin"
			redirect_to admin_root_url
		else
			redirect_to member_root_url
		end
	end

protected

	def permission_denied
		flash[:notice] = "You do not have access to #{request.path}."
		redirect_to root_url
	end

end

class Member::MemberController < ApplicationController

	before_filter :require_user
	filter_access_to :all
	layout "member"

	def index
	end

protected

	def permission_denied
		flash[:notice] = "You do not have access to #{request.path}."
		go_home
	end

end
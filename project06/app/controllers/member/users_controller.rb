class Member::UsersController < Member::MemberController

	filter_access_to :all

	def index
		@user = current_user
	end

	def edit
		@user = current_user
		render :action => 'edit'
	end

	def update
		@user = current_user
		if @user.update_attributes(params[:user])
			flash[:notice] = "Successfully updated profile."
			redirect_to member_root_url
		else
			render :action => 'edit'
		end
	end
  
	def destroy
		@user = current_user
		@user.destroy
		redirect_to root_url
	end
  
end

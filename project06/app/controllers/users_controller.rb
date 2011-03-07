class UsersController < ApplicationController

	filter_access_to :all

  def new
    @user = User.new
  end

	def create
		@user = User.new(params[:user])
		@user_session = UserSession.new(params[:user])
		if verify_recaptcha(:model => @user)
			if @user.save and @user_session.save
				flash[:notice] = "User successfully registered."
				begin_page
			else
				render :action => 'new'
			end
		else
			render :action => 'new'
		end
	end
	
	def edit
		@user = current_user
		render :action => 'edit'
	end

  def destroy
    @user = current_user
	 @user.destroy

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end

end

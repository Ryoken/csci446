class UsersController < ApplicationController

	filter_access_to :all

  def new
    @user = User.new
  end

	def create
		@user = User.new(params[:user])
		if verify_recaptcha(:model => @user)
			if @user.save
				flash[:notice] = "User successfully registered."
				redirect_to users_edit_url
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

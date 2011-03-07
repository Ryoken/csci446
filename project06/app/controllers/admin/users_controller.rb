class Admin::UsersController < Admin::AdminController

	filter_access_to :all

  def index
    @users = User.paginate(:page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

	def edit
		@user = User.find(params[:id])
		render :action => 'edit'
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(params[:user])
			flash[:notice] = "Successfully updated user."
			redirect_to admin_root_url
		else
			render :action => 'edit'
		end
	end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(admin_users_url) }
      format.xml  { head :ok }
    end
  end
  
end
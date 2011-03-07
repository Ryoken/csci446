class UserSessionsController < ApplicationController

	before_filter :require_no_user, :only => [:new, :create]
	before_filter :require_user, :only => [:destroy]

  def new
    @user_session = UserSession.new
  end

	def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:notice] = "Welcome, #{get_name}."
		begin_page
    else
		flash[:notice] = "Sorry, we could not register you."
      render :action => 'new'
    end
  end
  
	def update
    @user = current_user
	     if @user.update_attributes(params[:user])
      flash[:notice] = "Successfully updated user."
      redirect_to root_url
    else
      render :action => 'edit'
    end
  end

  def destroy
    @user_session = UserSession.find
    @user_session.destroy
    flash[:notice] = "Successfully logged out."
    redirect_to root_url
  end
end
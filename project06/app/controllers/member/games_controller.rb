class Member::GamesController < Member::MemberController

	filter_access_to :all

	def index
		@games = Game.paginate(:page => params[:page], :conditions => ["author == #{current_user.id}"])
	end

	def new
		@game = Game.new
	end

	def create
		@game = Game.new(params[:game])
		if @game.save
			flash[:notice] = "Successfully created game."
			redirect_to member_games_url
		else
			render :action => 'new'
		end
	end

  def edit
		@game = Game.find(params[:id])
  end

	def update
		@game = Game.find(params[:id])
		if @game.update_attributes(params[:game])
			flash[:notice] = "Successfully updated game."
			redirect_to member_games_url
		else
			render :action => 'edit'
		end
	end

	def destroy
		@game = Game.find(params[:id])
		@game.destroy
		flash[:notice] = "Successfully destroyed game."
		redirect_to member_games_url
	end

end
class UsersController < ApplicationController

	def show
		@user = User.all
	end


	def  new
	  @user = User.new
	end


	def create
	 	@user = User.new(user_params)
		if @user.save
			redirect_to user_path(user), notice: "User successfully created"
		else
			render :new
		end
	end

	def edit
		@user = User.find_by_id(params[:id])
	end

	def update
		@user = User.find_by_id(params[:id])
		@user.update(user_params)
	end


	private

	def user_params
	    params.require(:user).permit(:email, :id)
	end
end

class BoatsController < ApplicationController
	def show
		@boat = Boat.find_by(params[:id])
	end

	def new
		@boat = Boat.new(boat_params)
	end

	def create
		@boat = Boat.new(boat_params)
		if @boat.save
			redirect_to boat_path(boat)
		else
			render :new
		end
	end

	def edit
		@boat = Boat.find_by(params[:id])
	end

	def update
		@boat = Boat.find_by(params[:id])
  	@boat.update(boat_params)
	end

	private

	def boat_params
		params.require(:boat).permit(:id, :avatar, :name, :loc, :containers, :user_id)
	end
end

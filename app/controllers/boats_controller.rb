class BoatsController < ApplicationController

	def index
		@boats = Boat.find_by_id(params[:id])
	end

	def create
		@boat = Boat.new(boat_params)
		if @boat.save
			redirect_to @boat, notice: "Boat successfully created" 
		else
			render :new
		end
	end

	def new
		@boat = Boat.new
	end

	def edit
		@boat = Boat.find_by_id(params[:id])
	end

	def update
		if @boat.update(boat_params)
			@boat.update(boat_params)
		end
	end

	def destroy
		@boat.destroy(boat_params)
		redirect_to @boat, notice: "Boat successfully deleted"
	end

	private

	def boat_params
		params.require(:boat).permit(:id, :avatar, :name, :loc, :containers, :user_id, :avatar)
	end
end

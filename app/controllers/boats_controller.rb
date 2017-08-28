class BoatsController < ApplicationController

	def index
		@boats = current_user.boats.all
		@boat = Boat.find_by_id(params[:id])
	end

	def show
		redirect_to "/boats"
	end

	def create
		@boat = current_user.boats.new(boat_params)
		binding.pry
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

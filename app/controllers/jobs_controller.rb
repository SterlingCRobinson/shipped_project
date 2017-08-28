class JobsController < ApplicationController

	def index
		@job = Job.all

	end

	def show
		@job = Job.find_by_id(params[:id])
		@boats = current_user.boats.all
	end

	def create
		@job = Job.new(job_params)
		if @job.save
			redirect_to @job, notice: "Job successfully created" 
		else
			render :new
		end
	end

	def new
		@job = Job.new
	end

	def edit
		@job = Job.find_by_id(params[:id])
	end

	def update
		@job = Job.find_by_id(params[:id])
		if @job.update(job_params)
			@job.update(job_params)
		end
	end

	def destroy
		@job.destroy(job_params)
		redirect_to @job, notice: "Job successfully deleted"
	end

	private

	def job_params
		params.require(:job).permit(:id, :boat_id, :name, :containers, :cost, :description, :origin, :destination)
	end

end



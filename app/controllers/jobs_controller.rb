class JobsController < ApplicationController

	def index
		@job = Job.all
	end


	def show
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
	end


	def update
		if @job.update(job_params)
			redirect_to @job, notice: "Job successfully updated"
		else
			render :edit
	end


	def destroy
		if @job.destroy(job_params)
			redirect_to @job, notice: "Job successfully deleted"
		else
			render :
		end
	end


	private

	def job_params
		params.require(:job).permit(:id, :name, :containers, :cost, :description, :origin, :destination)
	end

end



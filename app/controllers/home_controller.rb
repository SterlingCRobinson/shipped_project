class HomeController < ApplicationController
	def index
		@jobs = Job.all.sort_by { |r| r.id }.reverse
		@job = Job.find_by(params[:id])
	end
end

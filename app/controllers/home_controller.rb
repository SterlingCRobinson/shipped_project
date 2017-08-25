class HomeController < ApplicationController
	def index
		@jobs = Jobs.all.sort_by { |r| r.id }.reverse
		@job = Jobs.find_by(params[:id])
	end
end

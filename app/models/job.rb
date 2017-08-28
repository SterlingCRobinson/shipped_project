class Job < ApplicationRecord
	has_many :boats
	validates_associated :jobs

	validates :name, :presence => true
end

class Job < ApplicationRecord
	has_many :boats

	validates :name, :presence => true
end

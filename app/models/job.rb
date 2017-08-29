class Job < ApplicationRecord
	has_many :boats

	validates :name, :presence => true
	validates :description, :presence => true, :length => {:minimum => 50}
	validates :cost, :presence => true,
	:numericality => true, 
	:format => {:with  => /\A\d{4,}\z/}
end

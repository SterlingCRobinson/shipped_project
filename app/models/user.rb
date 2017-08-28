class User < ApplicationRecord
	has_many :boats
	validates_associated :boats
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

				 validates :name, :presence => true

end

					# Person.create(:name => " ").valid?

					# Person.create(:name => nil).valid?

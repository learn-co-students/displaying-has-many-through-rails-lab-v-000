class Appointment < ActiveRecord::Base
	belongs_to :doctors
	belongs_to :patients
end

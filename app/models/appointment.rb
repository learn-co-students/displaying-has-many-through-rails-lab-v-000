class Appointment < ActiveRecord::Base
	belongs_to :patient
	belongs_to :doctor

	def display_time
		t = appointment_datetime 
		t.strftime("%B %d, %Y at %H:%M")
	end 
end

class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

 	def display_time
		self.appointment_datetime.strftime("%B %e, %Y at %H:%M")
	end
	
end

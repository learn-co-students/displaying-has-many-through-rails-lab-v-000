class Appointment < ActiveRecord::Base
	belongs_to :patient
	belongs_to :doctor

	def readable_time
		appointment_datetime.strftime("%B %e, %Y at %H:%M")
	end
end

class Appointment < ActiveRecord::Base
	belongs_to :patient
	belongs_to :doctor

	def hr_time
		appointment_datetime.strftime("%B %-d, %Y at %k:%M")
	end
end

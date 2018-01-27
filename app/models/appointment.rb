class Appointment < ActiveRecord::Base
	belongs_to :doctor
	belongs_to :patient

	def readable_appointment_datetime
		date_time = self.appointment_datetime.to_formatted_s(:long)

		date_time.split(/\s/).insert(3, "at").join(" ")
	end
end

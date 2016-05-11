class Appointment < ActiveRecord::Base

	belongs_to :doctor
	belongs_to :patient

	def readable_date
		month_day_year = self.appointment_datetime.strftime("%B %e, %Y")
		time = self.appointment_datetime.strftime("%k:%m")
		"#{month_day_year} at #{time}"
	end
end

class Doctor < ActiveRecord::Base
	has_many :appointments
	has_many :patients, through: :appointments


	def raedable_date
		month_day_year = self.appointment_datetime.strftime("%B %e, %Y")
		time = self.appointment_datetime.strftime("%k:%m")
		"#{month_day_year} at #{time}"
	end
end

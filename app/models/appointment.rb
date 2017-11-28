class Appointment < ActiveRecord::Base
	belongs_to :patient
	belongs_to :doctor

	def doctor_name
		try(:doctor).try(:name)
	end

	def patient_name
		try(:patient).try(:name)
	end

	def readable_date
		appointment_datetime.strftime("%B %e, %Y at %H:%M")
	end

end

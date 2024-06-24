class Appointment < ActiveRecord::Base
	belongs_to :doctor
	belongs_to :patient

	def patient_name
		self.patient.name
	end

	def doctor_name
		self.doctor.name
	end

	def date_time
		date = self.appointment_datetime
		date.strftime('%B %d, %Y at %H:%M')
	end
end

class Appointment < ActiveRecord::Base
	belongs_to :patient
	belongs_to :doctor

	def formatted_date_time		
		self.appointment_datetime.strftime("%B %d, %Y at %H:%M") 
	end

	def patient_name
		self.patient.name
	end

	def doctor_name
		self.doctor.name
	end

end

class Appointment < ActiveRecord::Base
	belongs_to :doctor
	belongs_to :patient

	def patient_name
		patient.name
	end

	def doctor_name
		doctor.name
	end
end

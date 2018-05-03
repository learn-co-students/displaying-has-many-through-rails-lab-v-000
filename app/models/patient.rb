class Patient < ActiveRecord::Base
	has_many :doctors, through: :appointments
	has_many :appointments

	# def patient_attributes=(patient_attributes)
 #  			patients_attributes.each do |i, patient_attribute|
 #  			self.patient.build(patient_attribute)
 #  		end
 #  	end

 #  	def appointment_attributes=(appointment_attributes)
 #  			self.appointment = Appointment.where(:appointment_datetime => appointment_attributes[:appointment_datetime]).first_or_create do
 #  		end
 #  	end
end

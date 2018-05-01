class Doctor < ActiveRecord::Base
	has_many :appointments
	has_many :patients, through: :appointments

	def doctor_attributes=(doctor_attributes)
  			doctors_attributes.each do |i, doctor_attribute|
  			self.doctors.build(doctor_attribute)
  		end
  	end

  	def appointments_attributes=(appointment_attributes)
  			self.appointment = Appointment.where(:appointment_datetime => appointment_attributes[:appointment_datetime]).first_or_create do
  		end
  	end

end

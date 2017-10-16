class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :patients, through: :appointments
  def appointments_attributes=(appointments_attributes)
		  #raise ingredients_attributes.inspect
			appointments_attributes.each do |i, appointment|
				#want to create an adress attributes for each person
		 self.appointments.build(appointment)
		end
	end
end

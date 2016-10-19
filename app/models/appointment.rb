class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

   def formatted_appt
    "#{self.appointment_datetime.to_formatted_s(:long)[0..-7]} at #{self.appointment_datetime.to_formatted_s(:long)[-5..-1]} "
  end

end



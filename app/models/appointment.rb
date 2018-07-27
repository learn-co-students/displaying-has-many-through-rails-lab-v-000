class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient
 
  
  def readable_datetime 
    self.appointment_datetime.strftime("%B %e, %Y at %H:%M")
  end
  
end

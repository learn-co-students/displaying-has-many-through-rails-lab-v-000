class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  private
  
 
  def readable_time
    self.appointment_datetime = self.appointment_datetime.strftime("%M %D")
  end
  
end

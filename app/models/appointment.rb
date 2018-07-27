class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient
  validate :is_readable_datetime 
  before_validation :make_readable_datetime

  private
  
 
  def is_readable_time
    if appointment_datetime != appointment_datetime.strftime("%B %e, %Y at %l:%M")
      errors.add(:appointment_datetime, "Time must be readable")
    end
  end
  
  def make_readable_datetime 
    self.appointment_datetime = self.appointment_datetime.strftime("%B %e, %Y at %l:%M")
  end
  
end

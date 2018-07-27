class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient
  before_validation :make_readable_datetime

  private
  
  
  def make_readable_datetime 
    self.appointment_datetime = self.appointment_datetime.strftime("%B %e, %Y at %H:%M")
  end
  
end

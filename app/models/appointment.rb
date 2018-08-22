
class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient
  
  def formatted_date
    self.appointment_datetime.to_formatted_s(:long)
  end
  
end


class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient
  
  def scheduled_patient
    self.patient
  end
  
end

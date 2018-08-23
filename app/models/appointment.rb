
class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient
  
  def formatted_date
    testy = self.appointment_datetime.strftime('%B %d, %Y at %k:%M')
  end
  
end

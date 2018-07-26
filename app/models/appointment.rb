class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient
  
  def readable_date_time
    self.appointment_datetime.strftime("%B %A, %Y at %I:%M")
  end
  
end

class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient
  after_find :readable_date_time
  
  def readable_date_time
    self.appointment_datetime.strftime("%B %A, %Y at %I:%M")
  end
  
end

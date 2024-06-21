class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def appt_time
    self.appointment_datetime.strftime("%B %e, %Y at %k:%M")
  end
end

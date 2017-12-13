class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def app_datetime
    self.appointment_datetime.strftime("%B %d, %Y") + " at " + self.appointment_datetime.strftime("%H:%M")
  end
end

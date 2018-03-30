class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def normaltime
    self.appointment_datetime.strftime("%B %d, %Y") + " at " + self.appointment_datetime.strftime("%k:%M")
  end
end

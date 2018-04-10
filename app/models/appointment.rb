class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def readable_appointment
    self.appointment_datetime.strftime("%B %d, %Y") + " at " + self.appointment_datetime.strftime("%k:%M")
  end
end

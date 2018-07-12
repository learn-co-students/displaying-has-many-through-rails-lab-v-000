class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def appointment_format
    a = self.appointment_datetime
    a.strftime("%B") + " " + a.strftime("%d") + ", " + a.strftime("%Y") + " at " + a.strftime("%H") + ":" + a.strftime("%M")
  end
end

class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def datetime_printout
    dt = self.appointment_datetime
    "#{dt.strftime("%B")} #{dt.day}, #{dt.year} at #{dt.strftime("%H:%M")}"
  end
end

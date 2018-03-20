class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def datetime_in_human_readable_format
    date = self.appointment_datetime.strftime("%B %d, %Y")
    time = self.appointment_datetime.strftime("%H:%M")

    date + " at " + time
  end
end

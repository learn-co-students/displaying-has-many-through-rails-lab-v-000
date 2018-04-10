class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  #January 12, 2016 at 3:00
  def readable_appt
    self.appointment_datetime.strftime("%B %d, %Y") + ' at ' + self.appointment_datetime.strftime("%k:%M")
  end
end

class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def date_format
    formatted = self.appointment_datetime.strftime('%B') + " " + self.appointment_datetime.strftime('%d')
    formatted += ", " + self.appointment_datetime.strftime('%Y') + " at "
    formatted += self.appointment_datetime.strftime("%H:%M")
    formatted
  end

  #January 12, 2016 at 3:00
end

class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  def convert_datetime(appointment_datetime)
    d = appointment_datetime
    d.strftime("%B%e, %Y at %I:%M")
  end
end

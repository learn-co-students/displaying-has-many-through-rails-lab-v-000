class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  def formatted_time
    self.appointment_datetime.strftime("%B %-d, %Y at %k:%M")
  end
end
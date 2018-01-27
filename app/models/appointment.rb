class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def date_converter
    date = self.appointment_datetime
    date.strftime("%B %d, %Y at %H:%M")
  end
end

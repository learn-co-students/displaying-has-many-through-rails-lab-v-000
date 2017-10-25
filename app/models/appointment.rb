class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def friendly_format
    self.appointment_datetime.strftime("%B %d, %Y at %H:%M")
  end
end

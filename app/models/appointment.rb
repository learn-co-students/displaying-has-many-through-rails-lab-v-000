class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def human_readable
    self.appointment_datetime.strftime("%B %d, %Y at %H:%M")
  end
end

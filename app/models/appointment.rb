class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def formatted_time
    t = self.appointment_datetime
    t.strftime("%B %d, %Y at %H:%M")
  end

end
